desc 'nzbget' do
  latest = github('nzbget', 'nzbget').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/osx/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
