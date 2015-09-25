desc 'vlc' do
  latest = sparkle('http://update.videolan.org/vlc/sparkle/vlc-intel64.xml').last
  version = latest[:enclosure][:version]
  url = latest[:enclosure][:url]
  {version => url}
end
