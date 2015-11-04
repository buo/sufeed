desc 'openra' do
  latest = github('OpenRA', 'OpenRA').first
  version = latest.tag_name.gsub(/^release-/, '')
  latest.assets.select! { |e| e.name.match(/\.zip/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
