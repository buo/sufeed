desc 'easysimbl' do
  latest = github('norio-nomura', 'EasySIMBL').first
  version = latest.tag_name.gsub(/^EasySIMBL-/, '')
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
