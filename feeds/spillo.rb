desc 'spillo' do
  item = sparkle('http://bananafishsoftware.com/feeds/spillo.xml').last
  version = item.enclosure.shortVersionString
  url = item.enclosure.url
  Latest.new(version: version, url: url)
end
