desc 'bee' do
  latest = sparkle('http://neat.io/appcasts/bee-appcast.xml').first
  version = latest[:enclosure][:shortVersionString]
  url = latest[:enclosure][:url]
  {version => url}
end
