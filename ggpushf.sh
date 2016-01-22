#!/usr/bin/env sh

currBranch=$(eval "$(node -e "var path = require('path');console.log(path.join(path.dirname(require('fs').realpathSync('$0')), 'node_modules/.bin/git-current-branch'))")")

if [ "$currBranch" = "master" ]; then
  echo 'Cannot force push master'
  exit 1
else
  git push origin $currBranch
fi
