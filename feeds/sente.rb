desc 'sente' do
  doc = html('http://www.thirdstreetsoftware.com/site/DownloadingSente6.html')
  url = doc.at_css('a:contains("click here")')[:href]
  version = url.match(/Sente-([\d\.]+).zip/)[1]
  Latest.new version: version, url: url
end
