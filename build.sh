#!/bin/bash

microdnf install -y createrepo rpmdevtools

rpmbuild -ba example.spec

mkdir /tmp/dist
cp -r $HOME/rpmbuild/RPMS $HOME/rpmbuild/SRPMS /tmp/dist
find /tmp/dist/RPMS/ -mindepth 1 -maxdepth 1 -exec createrepo {} \;
createrepo /tmp/dist/SRPMS

mv /tmp/dist /git/dist
cp /git/src/index.html /git/dist/
cp /git/src/example.repo /git/dist/
