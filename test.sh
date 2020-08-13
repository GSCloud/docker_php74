#!/bin/bash

export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/usr/local/go/bin
ABSPATH=$(readlink -f $0)
ABSDIR=$(dirname $ABSPATH)
cd $ABSDIR
. _includes.sh

command -v docker >/dev/null 2>&1 || fail "Docker is NOT installed!"

if [ ! -n $(id -Gn "$(whoami)" | grep -c "docker") ]
    then if [ "$(id -u)" != "0" ]; then fail "Add yourself to the 'docker' group or run this script as root!"; fi
fi

if [ ! -r ".env" ]; then fail "Missing .env file!"; fi
export $(grep -v '^#' .env | xargs -d '\n')

info Entropy available
docker run -it --rm $TAG cat /proc/sys/kernel/random/entropy_avail

info PHP version
docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp $TAG php test.php
