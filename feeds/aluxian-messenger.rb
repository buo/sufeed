desc 'aluxian-messenger' do
  latest = github('Aluxian', 'Facebook-Messenger-Desktop').first
  version = latest.tag_name.gsub(/v/, '')
  package = latest.assets.select { |asset| asset.name.match(/\.dmg/) }.first
  url = package.browser_download_url
  Latest.new(version: version, url: url)
end
