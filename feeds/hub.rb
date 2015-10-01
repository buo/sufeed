desc 'hub' do
  latest = github('github', 'hub').first
  version = latest.tag_name.gsub(/^v/, '')
  url = latest.assets.select { |e| e.name.match(/mac/) }.first.browser_download_url
  Latest.new(version: version, url: url)
end
