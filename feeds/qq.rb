desc 'qq' do
  doc = html('http://im.qq.com/macqq/')
  url = doc.css('script').to_s.match(/newpkg : "(.*)",/)[1]
  version = url.match(/QQ_V([\d\.]+)\.dmg/)[1]
  {version => url}
end
