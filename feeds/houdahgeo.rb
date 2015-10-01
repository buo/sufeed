desc 'houdahgeo' do
  item = sparkle('https://www.houdah.com/houdahGeo/updates4/cast.xml').first
  version = item.enclosure.shortVersionString
  url = item.enclosure.url
  Latest.new(version: version, url: url)
end
