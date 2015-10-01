desc 'adium' do
  latest = sparkle('https://www.adium.im/sparkle/appcast-release.xml').first
  version = latest[:enclosure][:version]
  url = latest[:enclosure][:url]
  Latest.new(version: version, url: url)
end
