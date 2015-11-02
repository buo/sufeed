desc 'jewelrybox' do
  latest = github('remear', 'jewelrybox').sort_by { |e| e.published_at }.first
  version = latest.tag_name.gsub(/^v/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
