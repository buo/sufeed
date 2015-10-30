desc 'glyphish-gallery' do
  latest = github('glyphish', 'gallery').first
  version = latest.tag_name.gsub(/^v/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
