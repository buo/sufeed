desc 'caprine' do
  latest = github('sindresorhus', 'caprine').first
  version = latest.tag_name
  url = latest.assets.select { |e| e.name.match(/osx/) }.first.browser_download_url
  {version => url}
end
