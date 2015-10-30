desc 'dockertoolbox' do
  latest = github('docker', 'toolbox').first
  version = latest.tag_name.gsub(/^v/, '')
  asset = latest.assets.select { |e| e.name.match(/\.pkg$/) }.first
  url = asset.browser_download_url
  Latest.new version: version, url: url
end
