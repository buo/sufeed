desc 'xone' do
  latest = github('FranticRain', 'Xone-OSX').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/Xone-Driver-[\d\.]\.dmg/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
