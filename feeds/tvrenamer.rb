desc 'tvrenamer' do
  latest = github('tvrenamer', 'tvrenamer').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/osx64/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
