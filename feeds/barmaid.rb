desc 'barmaid' do
  latest = github('zenonas', 'barmaid', :prerelease => true).first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.first.browser_download_url
  {version => url}
end
