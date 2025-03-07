#!/usr/bin/env bash

git branch -D environment/development-next || true
git checkout -B environment/development-next

sed -i 's/%ENVIRONMENT%/dev/g' file.yaml
jq -cn --arg sha $(git rev-parse HEAD) '{drySha: $sha}' > hydrator.metadata
git add file.yaml hydrator.metadata
git commit -m "Hydrate from main" && git push --force origin

git checkout main
