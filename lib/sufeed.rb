require 'hashie'

$LOAD_PATH.push(File.expand_path('../sufeed', __FILE__))
require 'checksum'
require 'config'
require 'github'
require 'html'
require 'jsondata'
require 'latest'
require 'location'
require 'sparkle'
require 'text'

module Sufeed
  # Fetch the latest
  def self.fetch(name)
    raise "Could not find the feed" unless exist? name
    path = File.expand_path("../../feeds/#{name}.rb", __FILE__)
    contents = File.open(path, 'rb') do |handle|
      handle.read
    end
    eval(contents)
  end

  def self.exist?(name)
    File.exist? File.expand_path("../../feeds/#{name}.rb", __FILE__)
  end

  def self.desc(name, &prc)
    prc.call
  end
end
