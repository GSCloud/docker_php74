# PHP 7.4.7 Container

[https://hub.docker.com/repository/docker/gscloudcz/php747](https://hub.docker.com/repository/docker/gscloudcz/php747)

## Build

* **sudo ./build.sh** -> build Docker image
* Github: [https://github.com/GSCloud/docker_php74](https://github.com/GSCloud/docker_php74)

## Run

* **sudo ./run.sh** -> run **test.php**

## CLI Experiments

### Hello World

* sudo ./cli.sh 'echo "Hello World!"'

### Local Build Info

* sudo ./cli.sh 'phpinfo(INFO_ENVIRONMENT)'
* sudo ./php.sh -f test.php
* sudo ./php.sh -m

### Docker Info

* sudo docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp gscloudcz/php747 php -r 'phpinfo(INFO_CONFIGURATION);'

### Usage

* sudo docker run -it gscloudcz/php747 php --version
* sudo docker run -it -v "$PWD":/usr/src/myapp -w /usr/src/myapp gscloudcz/php747 php -f ./test.php
