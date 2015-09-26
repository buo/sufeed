desc 'angry-ip-scanner' do
  latest = github('https://github.com/angryziber/ipscan/releases.atom').first
  version = File.basename(latest[:link])
  url = "https://github.com/angryziber/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  {version => url}
end
