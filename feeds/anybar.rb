desc 'anybar' do
  latest = github('https://github.com/tonsky/AnyBar/releases.atom').first
  version = latest[:tag]
  url = "https://github.com/tonsky/AnyBar/releases/download/#{version}/AnyBar-#{version}.zip"
  {version => url}
end
