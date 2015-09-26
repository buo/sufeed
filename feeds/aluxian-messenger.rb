desc 'aluxian-messenger' do
  latest = github('https://github.com/Aluxian/Facebook-Messenger-Desktop/releases.atom').first
  version = File.basename(latest[:link]).delete('v')
  url = "https://github.com/Aluxian/Facebook-Messenger-Desktop/releases/download/v#{version}/Messenger.dmg"
  {version => url}
end
