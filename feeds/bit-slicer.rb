desc 'bit-slicer' do
  latest = sparkle('https://zgcoder.net/bitslicer/update/appcast.xml').first
  version = latest[:enclosure][:shortVersionString]
  url = latest[:enclosure][:url]
  {version => url}
end
