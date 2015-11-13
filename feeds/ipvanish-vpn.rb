desc 'ipvanish-vpn' do
  item = sparkle('https://www.ipvanish.com/software/osx/updates.xml').first
  m = item.title.match(/IPVanish v([\d\.]+) \((\d+)\)/)
  version = "#{m[1]}-#{m[2]}"
  url = item.enclosure.url
  Latest.new version: version, url: url
end
