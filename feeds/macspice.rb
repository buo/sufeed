desc 'macspice' do
  item = sparkle('http://www.macspice.com/AppCast-v2.xml').last
  version = item.enclosure.shortVersionString
  url = item.enclosure.url
  Latest.new version: version, url: url
end
