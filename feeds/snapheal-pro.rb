desc 'snapheal-pro' do
  latest = sparkle('http://cdn.macphun.com/updates/SnaphealMacPRO/appcast.xml').first
  version = "#{latest.enclosure.shortVersionString}.#{latest.enclosure.version}"
  url = latest.enclosure.url
  Latest.new version: version, url: url
end
