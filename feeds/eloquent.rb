desc 'eloquent' do
  # The latest in the appcast is not a stable version.
  # item = sparkle('http://www.eloquent-bible-study.eu/Eloquent_L2_Appcast.xml').first
  doc = html('https://launchpad.net/eloquent')
  version = doc.at_css('#downloads .version').text.strip.gsub(/Latest version is/, '').strip
  url = doc.at_css('#downloads .version +ul li a')[:href]
  Latest.new(version: version, url: url)
end
