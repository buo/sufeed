desc '{{NAME}}' do
  # The first entry is a pre-release.
  latest = github('{{URL}}')[1]
  version = latest[:tag].delete('v')
  url = "{{DOWNLOAD}}"
  {version => url}
end
