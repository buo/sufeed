desc 'html' do
  doc = html('URL')
  url = doc.at_css('.download-button')[:href]
  m = url.match(/4kvideodownloader_([\d\.]+)\.dmg/)
  version = m[1]
  {version => url}
end
