desc 'stack' do
  latest = github('commercialhaskell', 'stack').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/osx-x86_64\.tar\.gz$/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
