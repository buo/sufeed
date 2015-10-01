desc 'cd-to' do
  latest = github('jbtule', 'cdto').first
  version = latest.tag_name.gsub(/_/, '.')
  url = latest.assets.first.browser_download_url
  Latest.new(version: version, url: url)
end
