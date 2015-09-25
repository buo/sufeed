desc 'docker-compose' do
  latest = github('docker/compose').first
  version = latest[:title]
  url = "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Darwin-x86_64"
  {version => url}
end
