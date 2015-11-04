desc 'privacy-services-manager' do
  latest = github('univ-of-utah-marriott-library-apple', 'privacy_services_manager').first
  version = latest.tag_name.gsub(/^v/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
