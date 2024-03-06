#!/bin/bash

set -xe

microdnf install -y createrepo dnf dnf-plugins-core rpmdevtools

rpmdev-setuptree

rpmbuild -ba --define "_buildnum ${GITHUB_SHA}" example.spec

cp /git/src/example.repo /etc/yum.repos.d/

dnf reposync --repoid=example -p=/tmp/repo
mv /tmp/repo/example/* $HOME/rpmbuild/RPMS/x86_64/
dnf reposync --repoid=example --source -p=/tmp/src
mv /tmp/src/example-source/* $HOME/rpmbuild/SRPMS

# TODO: prune job that does removes old versions based on semver + support policy

createrepo $HOME/rpmbuild/RPMS/x86_64/
createrepo $HOME/rpmbuild/SRPMS

mkdir -p /git/dist
cp -r \
  /git/src/index.html \
  /git/src/example.repo \
  $HOME/rpmbuild/RPMS \
  $HOME/rpmbuild/SRPMS \
  /git/dist/
