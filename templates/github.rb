desc '{{NAME}}' do
  # The first entry is a pre-release.
  latest = github('{{URL}}')[1]
  version = File.basename(latest[:link]).delete('v')
  url = "{{DOWNLOAD}}"
  {version => url}
end
