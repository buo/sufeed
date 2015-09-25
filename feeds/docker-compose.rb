desc 'docker-compose' do
  # The first entry is just for testing the auto-update functionality.
  latest = github('docker/compose')[1]
  version = latest[:title]
  url = "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Darwin-x86_64"
  {version => url}
end
