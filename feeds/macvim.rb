desc 'macvim' do
  latest = github('macvim-dev', 'macvim').select { |e| e.tag_name.match(/snapshot/) }.first
  src = open('https://raw.githubusercontent.com/macvim-dev/macvim/master/src/version.h').read
  version = src.match(/VIM_VERSION_SHORT\s+"(.*)"/)[1]
  build = latest.tag_name.gsub(/snapshot-/, '')
  version = "#{version}-#{build}"
  url = latest.assets.first.browser_download_url
  Latest.new(version: version, url: url)
end
