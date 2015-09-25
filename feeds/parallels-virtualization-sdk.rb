desc 'parallels-virtualization-sdk' do
  url = location('http://www.parallels.com/download/pvsdk/')
  version = url.match(/ParallelsVirtualizationSDK-([\d\.\-]+)-mac.dmg/)[1]
  {version => url}
end
