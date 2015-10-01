desc 'sourcetree' do
  item = sparkle('https://www.sourcetreeapp.com/update/SparkleAppcast.xml').last
  version = item.enclosure.version
  url = item.enclosure.url
  Latest.new(version: version, url: url)
end
