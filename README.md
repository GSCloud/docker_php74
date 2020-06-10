# PHP 7.4.6 Container

## Build

* **sudo ./build.sh** -> build Docker image

## Run

* **sudo ./run.sh** -> run test **test.php**

## CLI Experiments

### Hello World aka Inline Code

* sudo ./cli.sh 'echo "Hello World!"'

### PHP Info

* sudo ./php.sh -m
* sudo ./cli.sh 'phpinfo(INFO_CONFIGURATION)'
* sudo ./cli.sh 'phpinfo(INFO_ENVIRONMENT)'
* sudo ./cli.sh 'phpinfo(INFO_VARIABLES)'

### Run a script

* sudo ./php.sh -f test.php
