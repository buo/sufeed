desc 'tagspaces' do
  latest = github('tagspaces', 'tagspaces').first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.select { |e| e.name.match(/osx64/) }.first.browser_download_url
  Latest.new(version: version, url: url)
end
