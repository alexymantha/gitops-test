
# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell

git clone https://github.com/alexymantha/gitops-test
# cd into the cloned directory
git checkout 27a8cd581c88d646bc238275079ef10df46044ae
helm template . --name-template guestbook2.staging --values ./helm-guestbook/values-production.yaml --include-crds
```