desc 'invisionsync' do
  latest = sparkle('https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml').first
  version = "#{latest.enclosure.shortVersionString}-#{latest.enclosure.version}"
  url = latest.enclosure.url
  Latest.new version: version, url: url
end
