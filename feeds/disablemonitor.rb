desc 'disablemonitor' do
  latest = github('Eun', 'DisableMonitor').first
  version = latest.tag_name.gsub(/^G/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
