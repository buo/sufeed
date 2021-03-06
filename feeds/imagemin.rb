desc 'imagemin' do
  latest = github('imagemin', 'imagemin-app', :prerelease => true).first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/darwin/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
