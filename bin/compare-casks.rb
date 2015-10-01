#!/usr/bin/env ruby
# encoding: utf-8

$LOAD_PATH.unshift File.expand_path('../../lib/', __FILE__)
require 'sufeed'

BREW_HOME = `brew --repository`.strip
CASK_HOME = "#{BREW_HOME}/Library/Taps/caskroom/homebrew-cask"
$LOAD_PATH.unshift("#{CASK_HOME}/lib")

require 'vendor/homebrew-fork/global'
require 'hbc'

def each_cask
  Dir.glob("#{CASK_HOME}/Casks/*.rb") do |filename|
    caskname = File.basename(filename, ".rb")
    cask = Hbc.load(caskname)
    yield cask
  end
end

each_cask do |cask|
  caskname = cask.to_s
  puts caskname

  if Sufeed.exist? caskname
    cask = Hbc.load caskname
    update = Sufeed.check caskname

    if cask.version != update.version
      puts update
    end
  end
end
