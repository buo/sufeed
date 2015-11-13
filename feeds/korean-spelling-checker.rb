desc 'korean-spelling-checker' do
  latest = github('miname', 'Korean-Spelling-Checker-Workflow').first
  version = latest.tag_name.gsub(/^v/, '')
  url = "https://github.com/miname/Korean-Spelling-Checker-Workflow/archive/#{version}.tar.gz"
  Latest.new version: version, url: url
end
