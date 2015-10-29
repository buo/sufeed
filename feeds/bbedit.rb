desc 'bbedit' do
  latest = plist('https://versioncheck.barebones.com/BBEdit.xml').last
  version = latest.SUFeedEntryShortVersionString
  url = latest.SUFeedEntryUpdateURL
  Latest.new version: version, url: url
end
