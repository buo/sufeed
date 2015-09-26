desc 'anybar' do
  latest = github('https://github.com/tonsky/AnyBar/releases.atom').first
  version = File.basename(latest[:link])
  url = "https://github.com/tonsky/AnyBar/releases/download/#{version}/AnyBar-#{version}.zip"
  {version => url}
end
