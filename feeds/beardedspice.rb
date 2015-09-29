desc 'beardedspice' do
  latest = github('beardedspice', 'beardedspice').first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.first.browser_download_url
  {version => url}
end
