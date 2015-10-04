desc 'findings' do
  item = sparkle('http://downloads.findingsapp.com/appcast.xml').first
  m = item.enclosure.shortVersionString.match(/([\d\.]+) \((\d+)\)/)
  version = "#{m[1]}-#{m[2]}"
  url = item.enclosure.url
  Latest.new(version: version, url: url)
end
