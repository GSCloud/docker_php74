# PHP 7.4.10

DockerHub: [https://hub.docker.com/repository/docker/gscloudcz/php74]  
GitHub: [https://github.com/GSCloud/docker_php74]

## Usage

* **make** - CLI help
* 🆘 make build - rebuild image
* 🆘 make docs - rebuild documentation
* 🆘 make everything - run all make points
* 🆘 make push - push Docker image
* 🆘 make test - test image

## Examples

`./cli.sh 'echo "Hello World!"'`  

`./php.sh -r 'echo "Hello World";'`  

`./php.sh -m`

`docker run --name php74 --rm gscloudcz/php74 php -r 'phpinfo(INFO_CONFIGURATION);'`

`docker run --name php74 --rm gscloudcz/php74 php --version`

`docker run --name php74 --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp gscloudcz/php74 php -f ./test.php`

Author: Filip Oščádal aka Fred Brooker 💌 <oscadal@gscloud.cz>
