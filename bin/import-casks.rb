#!/usr/bin/env ruby

BREW_HOME = `brew --repository`.strip
CASK_HOME = "#{BREW_HOME}/Library/Taps/caskroom/homebrew-cask"
$LOAD_PATH.unshift("#{CASK_HOME}/lib")

require 'vendor/homebrew-fork/global'
require 'hbc'

class Template
  def initialize(type)
    @type = type
    load
  end

  def load
    path = File.expand_path("../../templates/#{@type}.rb", __FILE__)
    File.open(path, 'rb') do |f|
      @tmpl = f.read
    end
  end

  def save(name)
    path = File.expand_path("../../feeds/#{name}.rb", __FILE__)
    if File.exists? path
      puts "#{path} already exists"
    else
      File.open(path, 'wb') do |f|
        f.write @tmpl
      end
    end
  end

  def render(args)
    args.each_pair do |key, value|
      @tmpl.gsub!(/{{#{key.upcase}}}/, value.to_s)
    end
  end
end

def each_cask
  Dir.glob("#{CASK_HOME}/Casks/*.rb") do |filename|
    caskname = File.basename(filename, ".rb")
    cask = Hbc.load(caskname)
    yield cask
  end
end

def get_type(cask)
  url = cask.appcast.to_s
  if url.match(/^https:\/\/github\.com/)
    'github'
  elsif url.match(/^http[s]?:/)
    'sparkle'
  else
    'none'
  end
end

each_cask do |cask|
  caskname = cask.to_s
  puts caskname
  case get_type(cask)
  when 'github'
    puts "#{caskname}: github"
    m = cask.appcast.to_s.match(/https:\/\/github\.com\/([^\/]+)\/([^\/]+)/)
    owner = m[1]
    repo = m[2]
    tmpl = Template.new 'github'
    tmpl.render(:name => caskname, :owner => owner, :repo => repo)
    tmpl.save(caskname)
  end
end
