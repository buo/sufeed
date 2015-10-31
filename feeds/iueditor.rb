desc 'iueditor' do
  doc = html('http://www.iueditor.org')
  url = doc.at_css('._IULink:contains("Download")')[:href]
  version = url.match(/V([\d\.]+)\.zip$/)[1]
  Latest.new version: version, url: url
end
