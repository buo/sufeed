desc '1password' do
  doc = html('https://agilebits.com/onepassword')
  url = doc.at_css('.downloadbutton')[:href]
  version = url.match(/1Password-([\d\.]+).zip/)[1]
  {version => url}
end
