
# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell

git clone https://github.com/alexymantha/gitops-test
# cd into the cloned directory
git checkout 7651b76d4b5f051a811dbfc6e45e117eea338f9a
helm template . --name-template guestbook --include-crds
```