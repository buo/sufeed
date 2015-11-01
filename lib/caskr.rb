# encoding: utf-8

BREW_HOME = `brew --repository`.strip
CASK_HOME = "#{BREW_HOME}/Library/Taps/caskroom/homebrew-cask"
$LOAD_PATH.unshift("#{CASK_HOME}/lib")

require 'vendor/homebrew-fork/global'
require 'hbc'

require 'caskr/appcast'
require 'caskr/version'

module Caskr
  def self.load_cask(caskname)
    Hbc.load(caskname)
  end

  def self.each_cask
    Dir.glob("#{CASK_HOME}/Casks/*.rb") do |filename|
      caskname = File.basename(filename, ".rb")
      yield load_cask(caskname)
    end
  end

  def self.fetch(cask)
    appcast = Appcast.new(:url => cask.appcast.to_s)

    curver = Version.new(cask.version)
    newver = Version.new(appcast.latest_version)
    newver = Version.new("0") if newver.nil?

    if not newver
      puts "invalid newver"
      puts @uri
      puts newver
    end

    if curver < newver
      puts "downloading... #{appcast.latest_url}"
      return {
        :appcast => appcast,
        :name => cask.to_s,
        :curver => curver,
        :newver => newver,
        :sha256 => cask.sha256,
        #Digest::SHA256.new.update(open(appcast.latest_url).read).to_s
        :latest_sha256 => Sufeed.checksum(appcast.latest_url)
      }
    end
  end

  def self.update_cask(cask, args)
    caskfile = "#{CASK_HOME}/Casks/#{cask}.rb"
    contents = open(caskfile).read
    if args.class == Latest
      contents.gsub!(/version '#{cask.version}'/, "version '#{args.version}'")
      contents.gsub!(/^  url "/, "  # url \"#{args.url}\"\n  url \"")
      unless cask.sha256.nil?
        contents.gsub!(cask.sha256, Sufeed.checksum(args.url))
      end
    else
      contents.gsub!(/version '#{args[:curver]}'/, "version '#{args[:newver]}'")
      contents.gsub!(args[:sha256], "#{args[:latest_sha256]}'\n  # url \"#{args[:appcast].latest_url}\"")
    end
    IO.write(caskfile, contents)
  end
end
