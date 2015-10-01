desc 'eloquent' do
  item = sparkle('http://www.eloquent-bible-study.eu/Eloquent_L2_Appcast.xml').first
  version = item.title.match(/Version ([\d\.]+)-\d+/)[1]
  url = item.enclosure.url
  Latest.new(version: version, url: url)
end
