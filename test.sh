#!/bin/bash

cp /git/src/example.repo /etc/yum.repos.d/

microdnf install -y example

[ "# RaBe Config" == "$(cat /etc/rabe.conf)" ]
exit $?
