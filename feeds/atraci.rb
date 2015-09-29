desc 'atraci' do
  latest = github('Atraci', 'Atraci').first
  version = latest.tag_name
  url = latest.assets.select { |e| e.name.match(/mac/) }.first.browser_download_url
  {version => url}
end
