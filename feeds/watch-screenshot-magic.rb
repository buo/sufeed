desc 'watch-screenshot-magic' do
  latest = github('Imperiopolis', 'WatchScreenshotMagic').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/\.tar\.gz/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
