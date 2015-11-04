desc 'webpquicklook' do
  latest = github('dchest', 'webp-quicklook').first
  version = latest.tag_name.gsub(/^v/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
