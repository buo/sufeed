desc 'actprinter' do
  doc = html('https://www.houdah.com/ACTPrinter/')
  link = doc.at_css('a:contains("Download ACTPrinter for Mac")')
  version = link.text.gsub(/Download ACTPrinter for Mac/, '').strip
  url = link[:href]
  Latest.new version: version, url: url
end
