desc 'fenix' do
  latest = github('coreybutler', 'fenix').sort_by { |e| e.published_at }.last
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/osx/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
