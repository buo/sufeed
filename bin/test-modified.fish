#!/usr/bin/env fish

for path in (git ls-files -o | grep feeds)
  set name (basename $path | sed 's/\.rb$//')
  echo ''
  echo $name
  bin/fetch.rb $name
end
