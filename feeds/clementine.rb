desc 'clementine' do
  items = github('clementine-player', 'Clementine')
  items = items.select do |item|
    !item.assets.index { |a| a.name.match(/dmg/) }.nil?
  end
  latest = items.first
  version = latest.tag_name
  url = latest.assets.select { |e| e.name.match(/dmg/) }.first.browser_download_url
  Latest.new(version: version, url: url)
end
