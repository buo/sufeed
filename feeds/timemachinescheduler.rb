desc 'timemachinescheduler' do
  doc = html('http://www.klieme.com/TimeMachineScheduler.html')
  url = doc.at_css('a[href*=Downloads]')[:href]
  version = url.match(/TimeMachineScheduler_([\d\.]+)\.zip/)[1]
  Latest.new version: version, url: url
end
