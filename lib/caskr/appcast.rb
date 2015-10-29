require 'nokogiri'
require 'open-uri'

# https://github.com/cactus/app-freshmint
# http://sparkle-project.org/documentation/publishing/
class Appcast
  attr :url, :latest_url, :latest_version

  def initialize(args)
    @url = args[:url]
    download
    parse
  end

  def download
    @xml = `curl --silent #{@url}`
  end

  def parse
    doc = Nokogiri::Slop(@xml)
    items = doc.xpath('//item').to_a
    raise "invalid appcast format, #{@url}" if items.empty?

    begin
      items.sort! do |x, y|
        Time.parse(x.pubDate.content) <=> Time.parse(y.pubDate.content)
      end
    rescue => err
      raise "invalid pubDate format, #{err}"
    end

    latest = items.last
    @latest_version = guess_version(latest)

    if latest.respond_to?(:enclosure)
      @latest_url = latest.enclosure.attribute('url').to_s or latest.link.to_s
    else
      @latest_url = latest.link.content
    end
  end

  def guess_version(item)
    if item.respond_to? :enclosure
      version = item.enclosure.attribute('shortVersionString')
      version = item.enclosure.attribute('version') if version.nil?
    else
      m = item.title.content.match(/Version ([\.\d]+)[^\d]*(\d+)?/)
      raise "failed to extract the version, #{item.title.content}" unless m
      version = m[1]
      version = "#{version}-#{m[2]}" if m[2]
    end
    version.to_s
  end

  def sha256
    return nil unless @xml
    hashed = Digest::SHA256.new.update(@xml)
    hashed.to_s
  end

  def to_s
    "url: #{@url}\nsha256: #{sha256}\nlatest_version: #{@latest_version}\nlatest_url: #{@latest_url}"
  end
end
