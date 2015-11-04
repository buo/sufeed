desc 'thyme' do
  latest = github('joaomoreno', 'thyme').first
  version = latest.tag_name.gsub(/^v/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
