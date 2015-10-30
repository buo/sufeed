desc 'dwihn0r-keepassx' do
  latest = github('dwihn0r', 'keepassx').first
  version = latest.tag_name.gsub(/^v/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
