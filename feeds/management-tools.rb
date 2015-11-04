desc 'management-tools' do
  latest = github('univ-of-utah-marriott-library-apple', 'management_tools').first
  version = latest.tag_name.gsub(/^v/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
