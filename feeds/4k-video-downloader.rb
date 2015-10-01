desc '4k-video-downloader' do
  doc = html('https://www.4kdownload.com/products/product-videodownloader')
  url = doc.at_css('.download-button')[:href]
  m = url.match(/4kvideodownloader_([\d\.]+)\.dmg/)
  version = m[1]
  Latest.new(version: version, url: url)
end
