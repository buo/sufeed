desc 'aquamacs' do
  latest = github('https://github.com/davidswelt/aquamacs-emacs/releases.atom').first
  version = latest[:tag].delete('emacs-')
  url = "https://github.com/davidswelt/aquamacs-emacs/releases/download/Aquamacs-#{version}/Aquamacs-Emacs-#{version}.dmg"
  {version => url}
end
