desc 'bandage' do
  latest = github('rrwick/Bandage').first
  version = File.basename(latest[:link]).delete('v')
  url = "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version}.zip"
  {version => url}
end
