desc 'appserver' do
  items = github('https://github.com/appserver-io/appserver/releases.atom')
  items = items.select { |item| item[:tag].match(/^[\d\.]+$/) }
  latest = items.first
  version = latest[:tag]
  url = "https://github.com/appserver-io/appserver/releases/download/#{version}/appserver-dist_#{version}-21_x86_64.pkg"
  {version => url}
end
