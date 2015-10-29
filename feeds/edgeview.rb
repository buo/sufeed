desc 'edgeview' do
  latest = sparkle('https://dl.dropboxusercontent.com/u/168552/edgeViewUpdate/edgeView_update.xml').first
  version = "0.#{latest.enclosure.version}"
  url = latest.enclosure.url
  Latest.new version: version, url: url
end
