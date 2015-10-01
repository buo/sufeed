desc 'tagger' do
  latest = github('Bilalh', 'Tagger').first
  package = latest.assets.first
  version = package.name.match(/([\d\.]+)\.zip/)[1]
  url = package.browser_download_url
  Latest.new(version: version, url: url)
end
