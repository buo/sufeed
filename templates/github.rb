desc '{{NAME}}' do
  latest = github('{{OWNER}}', '{{REPO}}').first
  version = latest.tag_name
  # latest.assets.each { |e| puts e.name }
  url = latest.assets.first.browser_download_url
  {version => url}
end
