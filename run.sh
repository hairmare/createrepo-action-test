podman run --rm -ti -v `pwd`:/git:Z -w /git -e GITHUB_SHA=${GITHUB_SHA#:-dev} ghcr.io/radiorabe/s2i-base /git/${1-build.sh}
