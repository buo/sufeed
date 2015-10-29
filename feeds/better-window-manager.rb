desc 'better-window-manager' do
  latest = sparkle('https://www.gngrwzrd.com/betterwindowmanager-appcast.xml').first
  version = "#{latest.enclosure.shortVersionString}.#{latest.enclosure.version}"
  url = latest.enclosure.url
  Latest.new version: version, url: url
end
