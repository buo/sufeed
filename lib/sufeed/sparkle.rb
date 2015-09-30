require 'nokogiri'
require 'rest-client'

module Sufeed
  def self.sparkle(url)
    items = []
    doc = Nokogiri::Slop(RestClient.get(url).body)
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
        svs = node.enclosure.attribute('shortVersionString')
        svs = node.enclosure.attribute('sparkle:shortversionstring') unless svs
        version = node.enclosure.attribute('version')
        version = node.enclosure.attribute('sparkle:version') unless version
        item[:enclosure] = {
          :shortVersionString => svs.to_s,
          :version => version.to_s,
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
