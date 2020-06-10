#!/bin/bash

export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/usr/local/go/bin
export PATH=$PATH:/root/bin:/root/go/bin:/root/.cargo/bin:/root/scripts
ABSPATH=$(readlink -f $0)
ABSDIR=$(dirname $ABSPATH)
cd $ABSDIR

docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp gscloud/php74 php "$@"
