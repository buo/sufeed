desc 'transporter-desktop' do
  # deprecated for homebrew-cask compatibility.
  #item = sparkle('http://appsoftware.connecteddata.com/mac/2.5/Appcast.xml').last
  #version = item.enclosure.version
  #url = item.enclosure.url
  #build = url.match(/#{version}_([\d]+)\.zip/)[1]
  #version = "#{version}_#{build}"
  
  # The URL was extracted from the following official web page.
  # https://secure.connecteddata.com/download/desktop
  data = jsondata('https://secure.connecteddata.com/get/desktopsoftware?version=latest&os=mac')
  version = data['url'].match(/Transporter_Desktop_([\d\.\_]+)\.dmg/)[1]
  url = "https://secure.connecteddata.com#{data['url']}"
  Latest.new version: version, url: url
end
