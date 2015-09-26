desc 'atom' do
  # The first entry is just for testing the auto-update functionality.
  latest = github('https://github.com/atom/atom/releases.atom')[1]
  version = latest[:title]
  url = "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  {version => url}
end
