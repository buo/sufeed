desc 'theine' do
  latest = github('lvillani', 'theine').first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.first.browser_download_url
  {version => url}
end
