desc 'qldds' do
  latest = github('Marginal', 'QLdds').first
  version = latest.name.gsub(/^Release/, '').strip
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
