require 'hashie'

SUFEED_ROOT = File.expand_path('../..', __FILE__)
SUFEED_LIB = File.expand_path('lib', SUFEED_ROOT)
$LOAD_PATH.push(SUFEED_ROOT)
$LOAD_PATH.push(SUFEED_LIB)
require 'sufeed/atom'
require 'sufeed/checksum'
require 'sufeed/config'
require 'sufeed/feed'
require 'sufeed/github'
require 'sufeed/html'
require 'sufeed/jsondata'
require 'sufeed/latest'
require 'sufeed/location'
require 'sufeed/plist'
require 'sufeed/sparkle'
require 'sufeed/text'
require 'sufeed/xml'

module Sufeed
  # Fetch the latest
  def self.fetch(name)
    raise "Could not find the feed" unless exist? name
    path = File.expand_path("../../feeds/#{name}.rb", __FILE__)
    contents = File.open(path, 'rb') do |handle|
      handle.read
    end
    Feed.new name: name, latest: eval(contents)
  end

  def self.each_feed
    Dir.glob("#{SUFEED_ROOT}/feeds/*.rb") do |filename|
      name = File.basename(filename, ".rb")
      yield fetch name
    end
  end

  def self.exist?(name)
    File.exist? File.expand_path("../../feeds/#{name}.rb", __FILE__)
  end

  def self.desc(name, &prc)
    prc.call
  end
end
