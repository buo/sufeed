desc 'jitsi' do
  latest = sparkle('https://download.jitsi.org/jitsi/macosx/sparkle/updates.xml').first
  url = latest.enclosure.url
  version = url.match(/jitsi-([\d\.]+)\.dmg/)[1]
  Latest.new version: version, url: url
end
