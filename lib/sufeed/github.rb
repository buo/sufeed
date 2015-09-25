require 'nokogiri'

module Sufeed
  def self.github(repo)
    entries = []
    doc = Nokogiri::Slop(open("https://github.com/#{repo}/releases.atom"))
    doc.xpath('//entry').each do |node|
      entry = {}

      if node.respond_to? 'id'
        entry[:id] = node.id.content
      end

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

    # The first entry is just for testing the auto-update functionality.
    entries.drop(1)
  end
end
