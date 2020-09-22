# PHP 7.4 custom container

DockerHub: [https://hub.docker.com/repository/docker/gscloudcz/php74]  
GitHub: [https://github.com/GSCloud/docker_php74]

## Build

run **./build.sh** to build the image

## Test

run **./test.sh** to run a test on **test.php**

## Examples

`./cli.sh 'echo "Hello World!"'`  
`./php.sh -r 'echo "Hello World";'`  
`./php.sh -f test.php`  
`./php.sh -m`

### PHP info

`docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp gscloudcz/php74 php -r 'phpinfo(INFO_CONFIGURATION);'`

### Usage

`docker run -it --rm gscloudcz/php74 php --version`  
`docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp gscloudcz/php74 php -f ./test.php`

Author: Filip Oščádal aka Fred Brooker 💌 <oscadal@gscloud.cz>
