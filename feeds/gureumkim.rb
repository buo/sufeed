desc 'gureumkim' do
  latest = github('gureum', 'gureum').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/\.pkg$/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
