desc 'glyphs' do
  latest = sparkle('http://updates.glyphsapp.com/appcast2.xml').last
  version = "#{latest.enclosure.shortVersionString}-#{latest.enclosure.version}"
  url = latest.enclosure.url
  Latest.new version: version, url: url
end
