desc 'propresenter' do
  item = sparkle('https://www.renewedvision.com/update/ProPresenter6.php').first
  version = item.enclosure.shortVersionString
  build = item.enclosure.version
  version = "#{version}-#{build}"
  url = item.enclosure.url
  Latest.new(version: version, url: url)
end
