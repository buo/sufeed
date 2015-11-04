desc 'sourcedrop' do
  latest = github('hohl', 'sourcedrop-osx').first
  version = latest.tag_name.gsub(/^r/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
