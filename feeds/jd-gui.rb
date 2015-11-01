desc 'jd-gui' do
  latest = github('java-decompiler', 'jd-gui').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/osx/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
