# PHP 7.4

DockerHub [https://hub.docker.com/repository/docker/gscloudcz/php74]  
GitHub [https://github.com/GSCloud/docker_php74]

## Usage

* **make** -> CLI help

## Examples

```bash
./cli.sh 'echo "Hello World!"'  
./php.sh -r 'echo "Hello World!";'  
./php.sh -m  
docker run --rm gscloudcz/php74 php --version  
docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp gscloudcz/php74 php -f ./test.php
```

Author: Filip Oščádal aka Fred Brooker 💌 <oscadal@gscloud.cz>
