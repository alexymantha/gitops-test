
# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell

git clone https://github.com/alexymantha/gitops-test
# cd into the cloned directory
git checkout 0ba35f97b2ffab76604c9ebf96ac09362bff8b26
helm template . --name-template guestbook.staging --values ./helm-guestbook/values-production.yaml --include-crds
```