
# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell

git clone https://github.com/alexymantha/gitops-test
# cd into the cloned directory
git checkout 024e641f39d3b19cd1eedec7dc0261e934be0527
helm template . --name-template guestbook2.staging --values ./helm-guestbook/values-production.yaml --include-crds
```