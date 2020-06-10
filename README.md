# PHP 7.4.6 Container

## Build

* **./build.sh** -> build Docker image

## Run

* **./run.sh** -> run test **test.php**

## CLI Experiments

### Hello World aka Inline Code

* sudo ./cli.sh 'echo "Hello World!"'

### Run Script

* sudo ./php.sh -f test.php

### PHP Modules

* sudo ./php.sh -m
* sudo ./cli.sh 'phpinfo(INFO_CONFIGURATION)'
* sudo ./cli.sh 'phpinfo(INFO_ENVIRONMENT)'
* sudo ./cli.sh 'phpinfo(INFO_VARIABLES)'
