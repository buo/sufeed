#!/usr/bin/env fish

for path in (git ls-files -o | grep feeds)
  set name (basename $path | sed 's/\.rb$//')
  git add $path
  git commit -m "Add $name"
end
