require 'open-uri'

desc 'airdroid' do
  url = jsondata('https://srv3.airdroid.com/p14/web/getbinary?type=dmg')['data']
  m = url.match(/AirDroid_Desktop_Client_([\d\.]+).dmg/)
  version = m[1]
  {version => url}
end
