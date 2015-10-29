desc 'royal-tsx' do
  latest = sparkle('http://v2.royaltsx.com/updates_beta.php').first
  version = latest.enclosure.version
  url = latest.enclosure.url
  Latest.new version: version, url: url
end
