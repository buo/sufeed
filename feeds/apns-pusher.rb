desc 'apns-pusher' do
  latest = github('KnuffApp', 'APNS-Pusher').first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.first.browser_download_url
  {version => url}
end
