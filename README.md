# Publish RPMs on GitHub Pages

Simple example of publishing an RPM on GitHub Pages.

Long term goals would be reworking this proof of concept into a version that
* only puts the actual repodata on pages
* uploads a signed RPM to the GH releases
* uses semrel, branch based workflow for multiple distro, etc.
* all the things like -debug packages etc.
* support for building branches from and pagure instance/repo?

I'm not sure if this is currently possible out of the box and digging deep
for workarounds isn't currently in scope.

## Developing

```bash
# build it locally
bash run.sh

# test it in a container
bash run test.sh
```
