desc 'cryptol' do
  latest = github('GaloisInc', 'cryptol').first
  version = latest.tag_name.gsub(/^v/, '')
  asset = latest.assets.select { |e| e.name.match(/MacOSX/) }.first
  url = asset.browser_download_url
  Latest.new version: version, url: url
end
