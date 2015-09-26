desc 'bilibili' do
  latest = github('https://github.com/typcn/bilibili-mac-client/releases.atom').first
  version = latest[:title]
  url = "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  {version => url}
end
