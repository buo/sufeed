desc 'apikitchen' do
  doc = html('http://apikitchen.com')
  url = doc.at_css('#header h1 a')[:href]
  version = url.match(/ApiKitchen_([\d\.]+)\.dmg/)[1]
  Latest.new version: version, url: url
end
