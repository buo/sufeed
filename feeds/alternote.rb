desc 'alternote' do
  item = sparkle('http://alternoteapp.com/assets/appcast.xml').last
  version = "#{item.enclosure.shortVersionString}_#{item.enclosure.version}"
  url = item.enclosure.url
  Latest.new version: version, url: url
end
