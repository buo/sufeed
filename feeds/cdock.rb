desc 'cdock' do
  latest = github('w0lfschild', 'cDock').first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.first.browser_download_url
  {version => url}
end
