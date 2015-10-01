desc 'aether' do
  items = github('nehbit', 'aether-public')
  latest = items.select { |item| item.tag_name.match(/-OSX$/) }.first
  version = latest.tag_name.gsub(/^v|-OSX$/, '')
  package = latest.assets.select { |asset| asset.name.match(/\.dmg$/) }.first
  url = package.browser_download_url
  Latest.new(version: version, url: url)
end
