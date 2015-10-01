desc 'appserver' do
  latest = github('appserver-io', 'appserver').first
  package = latest.assets.select { |e| e.name.match(/\.pkg/) }.first
  build = package.name.match(/-(\d+)_x86_64\.pkg/)[1]
  version = "#{latest.tag_name}-#{build}"
  url = package.browser_download_url
  Latest.new(version: version, url: url)
end
