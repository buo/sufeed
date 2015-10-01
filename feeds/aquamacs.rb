desc 'aquamacs' do
  latest = github('davidswelt', 'aquamacs-emacs').first
  version = latest.tag_name.gsub(/^Aquamacs-/, '')
  url = latest.assets.first.browser_download_url
  Latest.new(version: version, url: url)
end
