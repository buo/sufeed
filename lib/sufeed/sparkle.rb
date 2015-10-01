require 'hashie'
require 'nokogiri'
require 'rest-client'

module Sufeed
  def self.sparkle(url)
    items = []
    doc = Nokogiri::Slop(RestClient.get(url).body)
    doc.xpath('//item').each do |node|
      item = Hashie::Mash.new

      if node.respond_to? 'title'
        item.title = node.title.content
      end

      if node.respond_to? 'pubdate'
        item.pubDate = Time.parse node.pubdate.content
      end

      if node.respond_to? 'releasenoteslink'
        item.releaseNotesLink = node.releasenoteslink.content
      end

      if node.respond_to? 'enclosure'
        item.enclosure!.url = node.enclosure.attribute('url').to_s
        item.enclosure.type = node.enclosure.attribute('type').to_s
        item.enclosure.length = node.enclosure.attribute('length').to_s.to_i

        shortVersionString = node.enclosure.attribute('shortVersionString')
        shortVersionString = node.enclosure.attribute('sparkle:shortversionstring') unless shortVersionString
        version = node.enclosure.attribute('version')
        version = node.enclosure.attribute('sparkle:version') unless version

        item.enclosure.shortVersionString = shortVersionString.to_s
        item.enclosure.version = version.to_s
      end

      items << item
    end
    items
  end
end
