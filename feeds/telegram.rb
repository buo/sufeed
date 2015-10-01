desc 'telegram' do
  url = location('https://tdesktop.com/mac/')
  version = url.match(/tsetup\.([\d\.]+)\.dmg/)[1]
  Latest.new(version: version, url: url)
end
