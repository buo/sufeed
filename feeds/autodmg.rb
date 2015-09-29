desc 'autodmg' do
  latest = github('MagerValp', 'AutoDMG').first
  version = latest.tag_name.gsub(/^v/, '')
  url = latest.assets.first.browser_download_url
  {version => url}
end
