desc 'intellij-idea' do
  resp = text('https://www.jetbrains.com/js2/version.js')
  version = resp.match(/var versionIDEALong = "([\d\.]+)";/)[1]
  url = "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  Latest.new(version: version, url: url)
end
