desc 'google-refine' do
  latest = github('OpenRefine', 'OpenRefine').sort_by { |e| e.tag_name }.last
  latest.assets.select! { |e| e.name.match(/\.dmg$/) }
  version = latest.assets.first.name.gsub(/^google-refine-|\.dmg$/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
