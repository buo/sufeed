desc 'cakebrew' do
  item = sparkle('https://www.cakebrew.com/appcast/profileInfo.php').first
  version = item.enclosure.shortVersionString
  url = item.enclosure.url
  Latest.new version: version, url: url
end
