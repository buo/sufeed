desc 'moneywell' do
  item = sparkle('http://nothirst.com/feeds/MoneyWell2Appcast.xml').first
  version = item.enclosure.shortVersionString
  url = item.enclosure.url
  Latest.new(version: version, url: url)
end
