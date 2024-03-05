podman run --rm -ti -v `pwd`:/git:Z -w /git ghcr.io/radiorabe/s2i-base /git/${1-build.sh}
