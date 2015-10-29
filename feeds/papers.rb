desc 'papers' do
  latest = sparkle('http://appcaster.papersapp.com/apps/mac/production/appcast.xml').first
  version = latest.enclosure.shortVersionString.gsub(/[\(\)]/, '').gsub(/ /, '-')
  url = latest.enclosure.url
  Latest.new version: version, url: url
end
