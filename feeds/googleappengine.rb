desc 'googleappengine' do
  doc = xml('https://storage.googleapis.com/appengine-sdks')
  version = doc.css('Contents').last.css('Key').text.match(/([\d\.]+)\.zip$/)[1]
  url = "https://storage.googleapis.com/appengine-sdks/featured/GoogleAppEngineLauncher-#{version}.dmg"
  Latest.new version: version, url: url
end
