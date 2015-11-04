desc 'qldds' do
  latest = github('Marginal', 'QLdds').first
  version = latest.tag_name.gsub(/^rel-/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
