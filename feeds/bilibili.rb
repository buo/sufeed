desc 'bilibili' do
  latest = github('typcn/bilibili-mac-client').first
  version = latest[:title]
  url = "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  {version => url}
end
