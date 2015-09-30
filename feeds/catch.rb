desc 'catch' do
  latest = github('mipstian', 'catch').first
  version = latest.tag_name
  url = latest.assets.first.browser_download_url
  {version => url}
end
