desc 'conductor' do
  latest = github('keith', 'conductor').first
  version = latest.tag_name
  url = latest.assets.first.browser_download_url
  {version => url}
end
