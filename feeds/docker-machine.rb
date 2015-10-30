desc 'docker-machine' do
  latest = github('docker', 'machine').first
  version = latest.tag_name.gsub(/^v/, '')
  asset = latest.assets.select { |e| e.name.match(/darwin-amd64/) }.first
  url = asset.browser_download_url
  Latest.new version: version, url: url
end
