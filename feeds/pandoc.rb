desc 'pandoc' do
  # Sometimes the feed item has only a windows package.
  items = github('jgm', 'pandoc').select do |item|
    idx = item.assets.find_index { |e| e.name.match(/osx/) }
    !idx.nil?
  end
  latest = items.first
  version = latest.tag_name.gsub(/^v/, '')
  latest.assets.select! { |e| e.name.match(/osx/) }
  url = latest.assets.first.browser_download_url
  Latest.new version: version, url: url
end
