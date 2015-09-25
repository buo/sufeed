desc 'parallels-desktop' do
  url = location('http://www.parallels.com/directdownload/pd11/')
  version = url.match(/ParallelsDesktop-([\d\.\-]+).dmg/)[1]
  {version => url}
end
