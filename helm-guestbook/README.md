
# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell

git clone https://github.com/alexymantha/gitops-test
# cd into the cloned directory
git checkout c24c3ec4c1bd5ff06e12c1d962888c051f600851
helm template . --name-template guestbook --include-crds
```