# PHP 7.4.8 custom container

Docker hub: [https://hub.docker.com/repository/docker/gscloudcz/php747]  
Github: [https://github.com/GSCloud/docker_php74]

## Build

run **./build.sh** to build the image

## Test

run **./test.sh** to run a test on **test.php**

## Examples

`./cli.sh 'echo "Hello World!"'`  
`./php.sh -r 'echo "Hello World";'`  
`./php.sh -f test.php`  
`./php.sh -m`

### PHP Info

`docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp gscloudcz/php747 php -r 'phpinfo(INFO_CONFIGURATION);'`

### Usage

`docker run -it gscloudcz/php747 php --version`  
`docker run -it -v "$PWD":/usr/src/myapp -w /usr/src/myapp gscloudcz/php747 php -f ./test.php`
