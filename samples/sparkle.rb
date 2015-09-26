desc 'sparkle' do
  latest = sparkle('URL').first
  version = latest[:enclosure][:shortVersionString]
  url = latest[:enclosure][:url]
  {version => url}
end
