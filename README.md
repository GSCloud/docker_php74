# PHP 7.4.7 custom container

Docker hub: [https://hub.docker.com/repository/docker/gscloudcz/php747]  
Github: [https://github.com/GSCloud/docker_php74]

## Build

run **./build.sh** to build the image

## Test

run **./test.sh** to run a test on **test.php**

## Examples

### Hello World

`./cli.sh 'echo "Hello World!"'`
`./php.sh -r 'echo "Hello World";'`

### Local Build Info

`./cli.sh 'phpinfo(INFO_ENVIRONMENT)'`

`./php.sh -f test.php`

`./php.sh -m`

### Docker Info

* sudo docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp gscloudcz/php747 php -r 'phpinfo(INFO_CONFIGURATION);'

### Usage

* sudo docker run -it gscloudcz/php747 php --version
* sudo docker run -it -v "$PWD":/usr/src/myapp -w /usr/src/myapp gscloudcz/php747 php -f ./test.php
