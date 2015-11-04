desc 'operadriver' do
  latest = github('operasoftware', 'operachromiumdriver').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/mac64/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
