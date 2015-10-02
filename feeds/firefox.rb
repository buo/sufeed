desc 'firefox' do
  doc = html('https://www.mozilla.org/en-US/firefox/new/#download-fx')
  url = doc.at_css('.os_osx .download-link')[:href]
  url = location(url)
  version = url.match(/releases\/([\d\.]+)\/mac/)[1]
  Latest.new(version: version, url: url)
end
