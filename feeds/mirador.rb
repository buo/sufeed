desc 'mirador' do
  latest = github('mirador', 'mirador').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/macosx/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end