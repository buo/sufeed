desc 'corsixth' do
  items = github('CorsixTH', 'CorsixTH').select do |item|
    !item.assets.index { |e| e.name.match(/dmg/) }.nil?
  end
  latest = items.first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.select { |e| e.name.match(/dmg/) }.first.browser_download_url
  {version => url}
end
