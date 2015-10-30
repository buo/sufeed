desc 'hub' do
  latest = github('github', 'hub').first
  version = latest.tag_name.gsub(/^v/, '')
  asset = latest.assets.select { |e| e.name.match(/darwin/) }.first
  url = asset.browser_download_url
  Latest.new(version: version, url: url)
end
