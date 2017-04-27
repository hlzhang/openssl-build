#!/usr/bin/env bash

: "${LIB_NAME:=openssl-1.1.0c}"

echo "building ${LIB_NAME}"

(cd scripts; sh ./build-openssl-ios.sh)
(cd scripts; sh ./build-openssl-android.sh)

source ./scripts/package.sh
(cd target; package "." "${LIB_NAME}")
