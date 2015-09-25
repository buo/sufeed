require 'nokogiri'

module Sufeed
  def self.sparkle(url)
    items = []
    doc = Nokogiri::Slop(open(url))
    doc.xpath('//item').each do |node|
      item = {}

      if node.respond_to? 'title'
        item[:title] = node.title.content
      end

      if node.respond_to? 'pubdate'
        item[:pubDate] = Time.parse node.pubdate.content
      end

      if node.respond_to? 'releasenoteslink'
        item[:releaseNotesLink] = node.releasenoteslink.content
      end

      if node.respond_to? 'enclosure'
        item[:enclosure] = {
          :shortVersionString => node.enclosure.attribute('sparkle:shortversionstring').to_s,
          :version => node.enclosure.attribute('sparkle:version').to_s,
          :url => node.enclosure.attribute('url').to_s,
          :type => node.enclosure.attribute('type').to_s,
          :length => node.enclosure.attribute('length').to_s.to_i
        }
      end

      items << item
    end
    items
  end
end
