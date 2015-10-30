desc 'electron' do
  latest = github('atom', 'electron').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/darwin-x64\.zip$/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
