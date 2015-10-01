desc 'atom' do
  latest = github('atom', 'atom').first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.select { |e| e.name.match(/atom-mac\.zip/) }.first.browser_download_url
  Latest.new(version: version, url: url)
end
