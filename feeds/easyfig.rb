desc 'easyfig' do
  latest = github('mjsull', 'Easyfig').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/OSX/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
