desc 'consul-template' do
  latest = github('hashicorp', 'consul-template').first
  version = latest.tag_name.gsub(/v/, '')
  unless latest.assets.empty?
    url = latest.assets.select { |e| e.name.match(/darwin_amd64/) }.first.browser_download_url
    Latest.new(version: version, url: url)
  end
end
