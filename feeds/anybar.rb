desc 'anybar' do
  latest = github('tonsky', 'AnyBar').first
  version = latest.tag_name
  url = latest.assets.first.browser_download_url
  {version => url}
end
