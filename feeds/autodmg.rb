desc 'autodmg' do
  latest = github('https://github.com/MagerValp/AutoDMG/releases.atom').first
  version = latest[:tag].delete('v')
  url = "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  {version => url}
end
