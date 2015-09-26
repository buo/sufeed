desc 'hub' do
  latest = github('https://github.com/github/hub/releases.atom').first
  version = File.basename(latest[:link]).delete('v')
  url = "https://github.com/github/hub/releases/download/v#{version}/hub-mac-amd64-#{version}.tar.gz"
  {version => url}
end
