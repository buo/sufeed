desc 'pgweb' do
  latest = github('sosedoff', 'pgweb').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/darwin_amd64/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
