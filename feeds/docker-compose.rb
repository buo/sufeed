desc 'docker-compose' do
  latest = github('https://github.com/docker/compose/releases.atom').first
  version = latest[:title]
  url = "https://github.com/docker/compose/releases/download/#{version}/docker-compose-Darwin-x86_64"
  {version => url}
end
