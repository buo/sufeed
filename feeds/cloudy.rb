desc 'cloudy' do
  latest = github('calebd', 'cloudy').first
  version = latest.name.gsub(/^Cloudy/, '').strip
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
