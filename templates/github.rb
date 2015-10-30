desc '{{NAME}}' do
  latest = github('{{OWNER}}', '{{REPO}}').first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.each { |e| puts e.name }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
