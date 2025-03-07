#!/usr/bin/env bash

rev=$(git rev-parse origin/main)

git branch -D environment/development-next || true
git checkout -B environment/development-next

sed -i 's/%ENVIRONMENT%/dev/g' file.yaml
jq -cn --arg sha $rev '{drySha: $sha}' > hydrator.metadata
git add file.yaml hydrator.metadata
git commit -m "Hydrate from main" && git push --force origin environment/development-next

git checkout main
