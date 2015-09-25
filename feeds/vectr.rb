desc 'vectr' do
  data = jsondata('https://download.vectr.com/desktop/release.json')
  version = data['version']
  url = data['link']['mac']
  {version => url}
end
