$LOAD_PATH.push(File.expand_path('../sufeed', __FILE__))
require 'github'
require 'html'
require 'jsondata'
require 'location'
require 'sparkle'
require 'text'

module Sufeed
  def self.check(name)
    path = File.expand_path("../../feeds/#{name}.rb", __FILE__)
    contents = File.open(path, 'rb') do |handle|
      handle.read
    end
    eval(contents)
  end

  def self.desc(name, &prc)
    prc.call
  end
end
