desc 'purescript' do
  latest = github('purescript', 'purescript').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/macos\.tar\.gz/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
