#!/bin/bash

set -ex

WORKDIR=$(pwd)

cd "${WORKDIR}/apache/5.6/"
docker build --no-cache -t asimlqt/php-apache:5.6 .
docker push asimlqt/php-apache:5.6

cd "${WORKDIR}/apache/5.6-dev/"
docker build --no-cache -t asimlqt/php-apache:5.6-dev .
docker push asimlqt/php-apache:5.6-dev

cd "${WORKDIR}/apache/7.1/"
docker build --no-cache -t asimlqt/php-apache:7.1 .
docker push asimlqt/php-apache:7.1

cd "${WORKDIR}/apache/7.1-dev/"
docker build --no-cache -t asimlqt/php-apache:7.1-dev .
docker push asimlqt/php-apache:7.1-dev

cd "${WORKDIR}/fpm/7.1/"
docker build --no-cache -t asimlqt/php-fpm:7.1 .
docker push asimlqt/php-fpm:7.1