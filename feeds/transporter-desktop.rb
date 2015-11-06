desc 'transporter-desktop' do
  item = sparkle('http://appsoftware.connecteddata.com/mac/2.5/Appcast.xml').last
  version = item.enclosure.version
  url = item.enclosure.url
  build = url.match(/#{version}_([\d]+)\.zip/)[1]
  version = "#{version}_#{build}"
  Latest.new version: version, url: url
end
