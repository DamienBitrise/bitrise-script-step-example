#!/bin/bash

set -ex

echo "arch" > build.sh
chmod 777 build.sh
alias xcodebuild="arch -x86_64 /bin/bash ./build.sh"
xcodebuild
