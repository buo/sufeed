desc 'sourcetree' do
  latest = sparkle('https://www.sourcetreeapp.com/update/SparkleAppcast.xml').last
  version = latest[:enclosure][:version]
  url = latest[:enclosure][:url]
  {version => url}
end
