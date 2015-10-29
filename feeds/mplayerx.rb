desc 'mplayerx' do
  latest = sparkle('https://raw.githubusercontent.com/niltsh/MPlayerX-Deploy/master/appcast.xml').first
  version = "#{latest.enclosure.shortVersionString}-#{latest.enclosure.version}"
  url = latest.enclosure.url
  Latest.new version: version, url: url
end
