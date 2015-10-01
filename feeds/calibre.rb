desc 'calibre' do
  latest = github('kovidgoyal', 'calibre').first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.select { |e| e.name.match(/dmg/) }.first.browser_download_url
  Latest.new(version: version, url: url)
end
