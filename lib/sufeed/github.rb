require 'nokogiri'
require 'open-uri'

module Sufeed
  # TODO not to fetch the pre-releases
  def self.github(url)
    entries = []
    doc = Nokogiri::Slop(open(url))
    doc.xpath('//entry').each do |node|
      entry = {}
      entry[:id] = node.id.content

      if node.respond_to? 'title'
        entry[:title] = node.title.content
      end

      if node.respond_to? 'updated'
        entry[:updated] = Time.parse node.updated.content
      end

      if node.respond_to? 'link'
        entry[:link] = node.link.attribute('href').to_s
      end

      entries << entry
    end

    entries
  end
end
