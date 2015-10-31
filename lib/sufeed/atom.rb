require 'nokogiri'
require 'rest-client'

module Sufeed
  def self.atom(url)
    items = []
    doc = Nokogiri::Slop(RestClient.get(url).body)
    doc.css('entry').each do |node|
      item = Hashie::Mash.new

      item.title = node.css('title').text.strip

      if node.respond_to? 'content'
        item.content = node.content.strip
      end

      begin
        item.updated = Time.parse node.css('updated').text
      rescue
        # exceptions caused by Time.parse
      end

      items << item
    end
    items
  end
end
