desc 'darktable' do
  latest = github('darktable-org', 'darktable').first
  version = latest.tag_name.gsub(/^release-/, '')
  asset = latest.assets.select { |e| e.name.match(/\.dmg$/) }.first
  url = asset.browser_download_url
  Latest.new version: version, url: url
end
