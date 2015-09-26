desc '{{NAME}}' do
  # The first entry is just for testing the auto-update functionality.
  latest = github('{{URL}}')[1]
  version = File.basename(latest[:link]).delete('v')
  url = "{{DOWNLOAD}}"
  {version => url}
end
