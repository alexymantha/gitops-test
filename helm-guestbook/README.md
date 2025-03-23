
# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell

git clone https://github.com/alexymantha/gitops-test
# cd into the cloned directory
git checkout bdbcafb93263c1ae22f35036325ed02d7b8d5415
helm template . --name-template guestbook --include-crds
```