desc 'qlvideo' do
  latest = github('Marginal', 'QLVideo').first
  version = latest.name.gsub(/Release/, '').strip
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
