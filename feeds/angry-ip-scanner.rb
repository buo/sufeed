desc 'angry-ip-scanner' do
  latest = github('angryziber', 'ipscan').first
  version = latest.tag_name
  url = latest.assets.select { |e| e.name.match(/mac/) }.first.browser_download_url
  Latest.new(version: version, url: url)
end
