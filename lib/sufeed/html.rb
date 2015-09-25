require 'nokogiri'
require 'open-uri'
require 'rest-client'

module Sufeed
  def self.html(url)
    resp = RestClient.get url, {
      'User-Agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9'
    }
    Nokogiri::HTML(resp.body)
  end
end
