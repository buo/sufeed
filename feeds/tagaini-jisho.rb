desc 'tagaini-jisho' do
  latest = github('Gnurou', 'tagainijisho').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/dmg/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
