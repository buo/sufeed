require 'nokogiri'
require 'rest-client'

module Sufeed
  def self.xml(url)
    Nokogiri::Slop(RestClient.get(url).body)
  end
end
