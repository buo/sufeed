desc 'macvim' do
  # The first entry is just for testing the auto-update functionality.
  latest = github('https://github.com/macvim-dev/macvim/releases.atom')[1]
  build = File.basename(latest[:link]).delete('snapshot-')
  version = "7.4-#{build}"
  url = "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{build}/MacVim-snapshot-#{build}.tbz"
  {version => url}
end
