#!/bin/bash

export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/usr/local/go/bin
export PATH=$PATH:/root/bin:/root/go/bin:/root/.cargo/bin:/root/scripts
ABSPATH=$(readlink -f $0)
ABSDIR=$(dirname $ABSPATH)
cd $ABSDIR
. _includes.sh

if [ "$(id -u)" != "0" ]; then fail "This script must be run as root!"; fi
command -v docker >/dev/null 2>&1 || fail "Docker is NOT installed!"

if [ ! -r ".env" ]; then fail "Missing .env file!"; fi
export $(grep -v '^#' .env | xargs -d '\n')

if [ -z "$TAG" ]; then fail "Missing TAG definition!"; fi

docker build -t $TAG .
