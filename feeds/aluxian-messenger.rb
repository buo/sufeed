desc 'aluxian-messenger' do
  latest = github('Aluxian', 'Facebook-Messenger-Desktop').first
  version = latest.tag_name.delete('v')
  package = latest.assets.select { |asset| asset.name.match(/\.dmg/) }.first
  url = package.browser_download_url
  {version => url}
end
