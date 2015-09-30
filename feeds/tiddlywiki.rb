desc 'tiddlywiki' do
  latest = github('Jermolene', 'TiddlyDesktop').first
  version = latest.tag_name.gsub(/v/, '')
  url = latest.assets.select { |e| e.name.match(/mac64/) }.first.browser_download_url
  {version => url}
end
