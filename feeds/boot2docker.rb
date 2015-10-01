desc 'boot2docker' do
  latest = github('boot2docker', 'osx-installer').first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.first.browser_download_url
  Latest.new(version: version, url: url)
end
