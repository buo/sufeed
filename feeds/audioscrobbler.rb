desc 'audioscrobbler' do
  latest = github('mxcl', 'Audioscrobbler.app').first
  version = latest.tag_name
  url = latest.assets.first.browser_download_url
  Latest.new(version: version, url: url)
end
