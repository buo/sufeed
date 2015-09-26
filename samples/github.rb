desc 'atom' do
  # The first entry is just for testing the auto-update functionality.
  latest = github('atom/atom')[1]
  version = File.basename(latest[:link]).delete('v')
  url = "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  {version => url}
end