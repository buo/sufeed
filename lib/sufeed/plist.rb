require 'nokogiri'
require 'rest-client'

module Sufeed
  def self.plist(url)
    items = []
    doc = Nokogiri::Slop(RestClient.get(url).body)
    key = nil
    value = nil
    doc.xpath('//plist').each do |plist|
      plist.dict.array.dict.each do |dict|
        item = Hashie::Mash.new
        dict.children.each do |child|
          if child.node_name == 'key'
            key = child.content
          elsif child.node_name == 'string'
            value = child.content
            item[key] = value
          end
        end
        items << item
      end
    end
    items
  end
end
