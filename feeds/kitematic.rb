desc 'kitematic' do
  latest = github('kitematic', 'kitematic').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/Mac/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
