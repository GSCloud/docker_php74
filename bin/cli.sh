#!/bin/bash
#@author Filip Oščádal <git@gscloud.cz>

dir="$(dirname "$0")"
. "$dir/_includes.sh"

command -v docker >/dev/null 2>&1 || fail "Docker is NOT installed!"

if [ ! -n $(id -Gn "$(whoami)" | grep -c "docker") ]
    then if [ "$(id -u)" != "0" ]; then fail "Add yourself to the 'docker' group or run this script as root!"; fi
fi
if [ ! -r ".env" ]; then fail "Missing .env file!"; fi
export $(grep -v '^#' .env | xargs -d '\n')

if [ -z "$TAG" ]; then fail "Missing TAG definition!"; fi
if [ -z "$NAME" ]; then fail "Missing NAME definition!"; fi

docker run --name $NAME --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp $TAG php -r "$@;"

exit 0
