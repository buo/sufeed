desc 'bit-slicer' do
  item = sparkle('https://zgcoder.net/bitslicer/update/appcast.xml').first
  version = item.enclosure.shortVersionString
  url = item.enclosure.url
  Latest.new(version: version, url: url)
end
