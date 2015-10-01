desc '{{NAME}}' do
  {version => url}
  item = sparkle('{{URL}}').first
  version = item.enclosure.shortVersionString
  url = item.enclosure.url
end
