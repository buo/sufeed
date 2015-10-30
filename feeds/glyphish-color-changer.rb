desc 'glyphish-color-changer' do
  latest = github('glyphish', 'color-changer', :prerelease => true).first
  version = latest.tag_name.gsub(/^v/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
