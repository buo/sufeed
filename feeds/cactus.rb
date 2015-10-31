desc 'cactus' do
  item = sparkle('http://update.cactusformac.com.s3-website-us-east-1.amazonaws.com/appcast.xml').first
  version = item.enclosure.shortVersionString
  url = item.enclosure.url
  Latest.new version: version, url: url
end
