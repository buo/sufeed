desc '{{NAME}}' do
  item = sparkle('{{URL}}').first
  version = item.enclosure.shortVersionString
  url = item.enclosure.url
  Latest.new(version: version, url: url)
end
