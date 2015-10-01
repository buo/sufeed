desc 'brackets' do
  latest = github('adobe', 'brackets').select { |e| e.tag_name.match(/^release-[\d\.]+$/) }.first
  version = latest.tag_name.gsub(/release-/, '')
  url = latest.assets.select { |e| e.name.match(/\.dmg$/) }.first.browser_download_url
  Latest.new(version: version, url: url)
end
