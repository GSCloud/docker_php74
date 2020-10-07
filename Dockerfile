ARG CODE_VERSION=latest
ARG TERM=linux
ARG LC_ALL=en_US.UTF-8
ARG DEBIAN_FRONTEND=noninteractive
FROM ubuntu:${CODE_VERSION}
RUN apt-get update -qq && apt-get upgrade -yqq && apt-get install -yqq --no-install-recommends curl openssl software-properties-common language-pack-en-base language-pack-en language-pack-cs && locale-gen en_US.UTF-8 cs_CZ cs_CZ.UTF-8
RUN LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:ondrej/php && apt-get update -yq && apt-get install -yqq \
php-imagick \
php-lua \
php-mongodb \
php-redis \
php-sodium \
php-ssh2 \
php-uuid \
php-yaml \
php7.4 \
php7.4-cli \
php7.4-curl \
php7.4-gd \
php7.4-intl \
php7.4-json \
php7.4-mbstring \
php7.4-mysql \
php7.4-pgsql \
php7.4-readline \
php7.4-sqlite3 \
php7.4-xml \
php7.4-zip
COPY php.ini /etc/php/7.4/cli/