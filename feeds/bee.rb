desc 'bee' do
  latest = sparkle('http://neat.io/appcasts/bee-appcast.xml').first
  version = latest[:enclosure][:shortVersionString]
  url = latest[:enclosure][:url]
  Latest.new(version: version, url: url)
end
