desc 'pinta' do
  latest = github('PintaProject', 'Pinta').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/app\.zip/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
