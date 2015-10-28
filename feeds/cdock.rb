desc 'cdock' do
  latest = github('w0lfschild', 'cDock').first
  version = latest.tag_name.gsub(/cDock2-/, '')
  url = latest.assets.first.browser_download_url
  Latest.new(version: version, url: url)
end
