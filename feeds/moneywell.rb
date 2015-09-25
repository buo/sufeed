desc 'moneywell' do
  latest = sparkle('http://nothirst.com/feeds/MoneyWell2Appcast.xml').first
  version = latest[:enclosure][:shortVersionString]
  url = latest[:enclosure][:url]
  {version => url}
end
