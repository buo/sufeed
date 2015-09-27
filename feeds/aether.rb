desc 'aether' do
  items = github('https://github.com/nehbit/aether-public/releases.atom')
  items = items.select { |item| item[:id].match(/-OSX$/) }
  latest = items.first
  version = latest[:tag].delete('v').delete('-OSX')
  url = "https://github.com/nehbit/aether-public/releases/download/v#{version}-OSX/Aether.#{version}.dmg"
  {version => url}
end
