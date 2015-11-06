desc 'munki' do
  latest = github('munki', 'munki').first
  #version = latest.tag_name.gsub(/^v/, '')
  url = latest.assets.first.browser_download_url
  version = url.match(/munkitools-([\d\.]+)\.pkg/)[1]
  Latest.new version: version, url: url
end
