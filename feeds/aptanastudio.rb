desc 'aptanastudio' do
  latest = github('aptana', 'studio3').first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.first.browser_download_url
  Latest.new(version: version, url: url)
end
