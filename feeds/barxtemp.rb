desc 'barxtemp' do
  latest = github('Gabriele91', 'barXtemp').first
  version = latest.tag_name
  url = latest.assets.first.browser_download_url
  {version => url}
end
