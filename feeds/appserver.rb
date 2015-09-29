desc 'appserver' do
  latest = github('appserver-io', 'appserver').first
  version = latest.tag_name
  url = latest.assets.select { |e| e.name.match(/\.pkg/) }.first.browser_download_url
  {version => url}
end
