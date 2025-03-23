
# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell

git clone https://github.com/alexymantha/gitops-test
# cd into the cloned directory
git checkout e21f4be2bc5d408c352e1d3514c7cac9ca9b2af8
helm template . --name-template guestbook --values ./helm-guestbook/values-production.yaml --include-crds
```