desc 'ammonite' do
  latest = sparkle('http://www.soma-zone.com/Ammonite/a/appcast.xml').last
  version = latest.enclosure.shortVersionString
  url = latest.enclosure.url
  Latest.new version: version, url: url
end
