desc 'mumble' do
  latest = github('mumble-voip', 'mumble').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/Mumble-[\d\.]+\.dmg$/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
