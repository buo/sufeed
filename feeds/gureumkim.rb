desc 'gureumkim' do
  latest = github('gureum', 'gureum').first
  latest.assets.select! { |e| e.name.match(/\.pkg$/) }
  # Sometimes the tag_name doesn't include the whole version string.
  version = latest.assets.first.name.gsub(/^GureumKIM-|\.pkg$/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
