desc 'openemu' do
  latest = github('OpenEmu', 'OpenEmu').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/OpenEmu_[\d\.]+\.zip/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
