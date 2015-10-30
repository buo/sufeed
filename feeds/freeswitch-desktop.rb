desc 'freeswitch-desktop' do
  latest = github('pablote', 'fs-mgmt').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/osx/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
