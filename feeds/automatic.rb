desc 'automatic' do
  item = sparkle('http://update.codingcurious.com/automatic/appcast2.xml').first
  version = "#{item.enclosure.shortVersionString}.#{item.enclosure.version}"
  url = item.enclosure.url
  Latest.new version: version, url: url
end
