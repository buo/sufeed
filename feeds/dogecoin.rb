desc 'dogecoin' do
  latest = github('dogecoin', 'dogecoin').first
  version = latest.tag_name.gsub(/^v/, '')
  asset = latest.assets.select { |e| e.name.match(/mac/) }.first
  url = asset.browser_download_url
  Latest.new version: version, url: url
end
