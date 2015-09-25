require 'json'
require 'open-uri'

module Sufeed
  def self.jsondata(url)
    JSON.parse(open(url).read)
  end
end
