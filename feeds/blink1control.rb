desc 'blink1control' do
  latest = github('todbot', 'blink1').first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.select { |e| e.name.match(/mac\.zip/) }.first.browser_download_url
  Latest.new(version: version, url: url)
end
