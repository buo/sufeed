desc 'intensify-pro' do
  latest = sparkle('http://cdn.macphun.com/updates/IntensifyPro/appcast.xml').first
  version = "#{latest.enclosure.shortVersionString}_#{latest.enclosure.version}"
  url = latest.enclosure.url
  Latest.new version: version, url: url
end
