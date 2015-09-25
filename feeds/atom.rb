desc 'atom' do
  latest = github('https://github.com/atom/atom/releases.atom').first
  version = latest[:title]
  url = "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  {version => url}
end
