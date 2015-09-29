require 'github_api'
require 'nokogiri'
require 'open-uri'

module Sufeed
  # TODO not to fetch the pre-releases
  def self.github_feed(url)
    entries = []
    doc = Nokogiri::Slop(open(url))
    doc.xpath('//entry').each do |node|
      entry = {}
      entry[:id] = node.id.content
      entry[:tag] = File.basename(entry[:id])

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

  def self.github(owner, repo, options = {})
    options[:draft] = false if options[:draft].nil?
    options[:prerelease] = false if options[:prerelease].nil?
    releases = Github.repos.releases.list owner: owner, repo: repo
    releases = releases.select do |release|
      release.draft == options[:draft] and release.prerelease == options[:prerelease]
    end
  end
end
