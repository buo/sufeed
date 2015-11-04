desc 'ridibooks' do
  url = location('http://ridibooks.com/getapp?os=mac')
  version = url.match(/ridibooks-(.*)\.dmg/)[1]
  Latest.new version: version, url: url
end
