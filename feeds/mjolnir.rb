desc 'mjolnir' do
  latest = github('sdegutis', 'mjolnir').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/tgz/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
