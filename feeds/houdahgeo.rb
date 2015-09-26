desc 'houdahgeo' do
  latest = sparkle('https://www.houdah.com/houdahGeo/updates4/cast.xml').first
  version = latest[:enclosure][:shortVersionString]
  url = latest[:enclosure][:url]
  {version => url}
end
