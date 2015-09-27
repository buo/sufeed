desc 'bandage' do
  latest = github('https://github.com/rrwick/Bandage/releases.atom').first
  version = latest[:tag].delete('v')
  url = "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version}.zip"
  {version => url}
end
