desc 'codekit' do
  latest = sparkle('https://incident57.com/codekit/appcast/ck2appcast.xml').first
  version = "#{latest.enclosure.shortVersionString}-#{latest.enclosure.version}"
  url = latest.enclosure.url
  Latest.new(version: version, url: url)
end
