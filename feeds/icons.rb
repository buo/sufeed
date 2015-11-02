desc 'icons' do
  latest = github('exherb', 'icons').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/macos/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
