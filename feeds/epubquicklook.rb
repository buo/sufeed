desc 'epubquicklook' do
  latest = github('jaketmp', 'ePub-quicklook').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/qlgenerator/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
