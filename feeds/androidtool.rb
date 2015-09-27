desc 'androidtool' do
  # The first entry is a pre-release.
  latest = github('https://github.com/mortenjust/androidtool-mac/releases.atom')[1]
  version = latest[:tag]
  url = "https://github.com/mortenjust/androidtool-mac/releases/download/#{version}/AndroidTool.zip"
  {version => url}
end
