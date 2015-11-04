desc 'piglet' do
  latest = github('jenslind', 'piglet').first
  version = latest.tag_name.gsub(/^v/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
