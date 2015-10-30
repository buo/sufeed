desc 'gargoyle' do
  latest = github('garglk', 'garglk').first
  version = latest.tag_name.gsub(/^stable-/, '')
  latest.assets.select! { |e| e.name.match(/mac\.dmg$/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
