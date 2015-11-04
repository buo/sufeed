desc 'moscow-ml' do
  latest = github('kfl', 'mosml').first
  version = latest.tag_name.gsub(/^ver-/, '')
  latest.assets.select! { |e| e.name.match(/pkg/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
