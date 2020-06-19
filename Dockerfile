ARG CODE_VERSION=latest
ARG TERM=linux
ARG LC_ALL=C.UTF-8
ARG DEBIAN_FRONTEND=noninteractive
FROM ubuntu:${CODE_VERSION}
RUN apt-get update -qq && apt-get upgrade -yqq && apt-get install -yqq --no-install-recommends curl haveged openssl software-properties-common language-pack-en-base language-pack-en && locale-gen en_US.UTF-8
RUN LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:ondrej/php && update-rc.d haveged defaults && apt-get install -yqq php-redis php7.4 php7.4-cli php7.4-curl php7.4-gd php7.4-intl php7.4-json php7.4-mbstring php7.4-mysql php7.4-readline php7.4-pgsql php7.4-sqlite3 php7.4-xml php7.4-zip
COPY php.ini /etc/php/7.4/cli/