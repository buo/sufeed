desc 'koko' do
  latest = github('noraesae', 'koko').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/mac/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
