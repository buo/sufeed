desc 'consul-template' do
  latest = github('hashicorp', 'consul-template').first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.select { |e| e.name.match(/darwin_amd64/) }.first.browser_download_url
  {version => url}
end
