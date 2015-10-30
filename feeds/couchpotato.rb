desc 'couchpotato' do
  latest = github('RuudBurger', 'CouchPotatoServer').first
  version = latest.tag_name.gsub(/^build\//, '')
  asset = latest.assets.select { |e| e.name.match(/macosx/) }.first
  url = asset.browser_download_url
  Latest.new version: version, url: url
end
