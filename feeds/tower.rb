desc 'tower' do
  item = sparkle('https://updates.fournova.com/updates/tower2-mac/stable').first
  version = item.enclosure.shortVersionString
  url = item.enclosure.url
  m = url.match(/tower2-mac\/(\d+)-(\w+)\//)
  build = "#{m[1]}-#{m[2]}"
  version = "#{version}-#{build}"
  Latest.new(version: version, url: url)
end
