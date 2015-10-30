desc 'gitbook' do
  latest = github('GitbookIO', 'editor-legacy').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/mac\.dmg/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
