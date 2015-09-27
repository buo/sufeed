desc 'apns-pusher' do
  latest = github('https://github.com/blommegard/APNS-Pusher/releases.atom').first
  version = latest[:tag].delete('v')
  url = "https://github.com/blommegard/APNS-Pusher/releases/download/v#{version}/APNS.Pusher.app.zip"
  {version => url}
end
