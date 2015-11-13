desc 'duet' do
  item = sparkle('http://updates.duetdisplay.com/checkMacUpdates').first
  version = item.title.gsub(/Version/, '').strip
  url = item.enclosure.url
  build = url.match(/\/#{version}\/(\d+)\/duet-#{version}.zip/)[1]
  version = "#{version}_#{build}"
  Latest.new version: version, url: url
end
