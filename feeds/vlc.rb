desc 'vlc' do
  item = sparkle('http://update.videolan.org/vlc/sparkle/vlc-intel64.xml').last
  version = item.enclosure.version
  url = item.enclosure.url
  Latest.new(version: version, url: url)
end
