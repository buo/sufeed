desc 'boot2docker-status' do
  latest = github('nickgartmann', 'boot2docker-status').first
  version = latest.tag_name
  url = latest.assets.first.browser_download_url
  Latest.new(version: version, url: url)
end
