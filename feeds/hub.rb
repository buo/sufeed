desc 'hub' do
  latest = github('https://github.com/github/hub/releases.atom').first
  version = latest[:tag].delete('v')
  url = "https://github.com/github/hub/releases/download/v#{version}/hub-mac-amd64-#{version}.tar.gz"
  {version => url}
end
