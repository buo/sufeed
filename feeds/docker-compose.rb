desc 'docker-compose' do
  latest = github('docker', 'compose').first
  version = latest.tag_name
  url = latest.assets.first.browser_download_url
  {version => url}
end
