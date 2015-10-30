desc 'firebird' do
  latest = github('nspire-emus', 'firebird').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/mac\.dmg/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
