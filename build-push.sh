#!/bin/bash

set -ex

WORKDIR=$(pwd)

docker pull php:5.6-apache
cd "${WORKDIR}/apache/5.6/"
docker build --no-cache -t asimlqt/php-apache:5.6 .
docker push asimlqt/php-apache:5.6

cd "${WORKDIR}/apache/5.6-dev/"
docker build --no-cache -t asimlqt/php-apache:5.6-dev .
docker push asimlqt/php-apache:5.6-dev

docker pull php:7.1-apache
cd "${WORKDIR}/apache/7.1/"
docker build --no-cache -t asimlqt/php-apache:7.1 .
docker push asimlqt/php-apache:7.1

cd "${WORKDIR}/apache/7.1-dev/"
docker build --no-cache -t asimlqt/php-apache:7.1-dev .
docker push asimlqt/php-apache:7.1-dev

docker pull php:7.2-apache
cd "${WORKDIR}/apache/7.2/"
docker build --no-cache -t asimlqt/php-apache:7.2 .
docker push asimlqt/php-apache:7.2

cd "${WORKDIR}/apache/7.2-dev/"
docker build --no-cache -t asimlqt/php-apache:7.2-dev .
docker push asimlqt/php-apache:7.2-dev

docker pull php:7.3-apache
cd "${WORKDIR}/apache/7.3/"
docker build --no-cache -t asimlqt/php-apache:7.3 .
docker push asimlqt/php-apache:7.3

cd "${WORKDIR}/apache/7.3-dev/"
docker build --no-cache -t asimlqt/php-apache:7.3-dev .
docker push asimlqt/php-apache:7.3-dev

docker pull php:7.4-apache
cd "${WORKDIR}/apache/7.4/"
docker build --no-cache -t asimlqt/php-apache:7.4 .
docker push asimlqt/php-apache:7.4

cd "${WORKDIR}/apache/7.4-dev/"
docker build --no-cache -t asimlqt/php-apache:7.4-dev .
docker push asimlqt/php-apache:7.4-dev

docker pull php:8.0-apache
cd "${WORKDIR}/apache/8.0/"
docker build --no-cache -t asimlqt/php-apache:8.0 .
docker push asimlqt/php-apache:8.0

cd "${WORKDIR}/apache/8.0-dev/"
docker build --no-cache -t asimlqt/php-apache:8.0-dev .
docker push asimlqt/php-apache:8.0-dev

docker pull php:8.1-apache
cd "${WORKDIR}/apache/8.1/"
docker build --no-cache -t asimlqt/php-apache:8.1 .
docker push asimlqt/php-apache:8.1

cd "${WORKDIR}/apache/8.1-dev/"
docker build --no-cache -t asimlqt/php-apache:8.1-dev .
docker push asimlqt/php-apache:8.1-dev

docker pull php:8.2-apache
cd "${WORKDIR}/apache/8.2/"
docker build --no-cache -t asimlqt/php-apache:8.2 .
docker push asimlqt/php-apache:8.2

cd "${WORKDIR}/apache/8.2-dev/"
docker build --no-cache -t asimlqt/php-apache:8.2-dev .
docker push asimlqt/php-apache:8.2-dev

docker pull php:5.6-fpm
cd "${WORKDIR}/fpm/5.6/"
docker build --no-cache -t asimlqt/php-fpm:5.6 .
docker push asimlqt/php-fpm:5.6

cd "${WORKDIR}/fpm/5.6-dev/"
docker build --no-cache -t asimlqt/php-fpm:5.6-dev .
docker push asimlqt/php-fpm:5.6-dev

docker pull php:7.1-fpm
cd "${WORKDIR}/fpm/7.1/"
docker build --no-cache -t asimlqt/php-fpm:7.1 .
docker push asimlqt/php-fpm:7.1

cd "${WORKDIR}/fpm/7.1-dev/"
docker build --no-cache -t asimlqt/php-fpm:7.1-dev .
docker push asimlqt/php-fpm:7.1-dev

docker pull php:7.2-fpm
cd "${WORKDIR}/fpm/7.2/"
docker build --no-cache -t asimlqt/php-fpm:7.2 .
docker push asimlqt/php-fpm:7.2

cd "${WORKDIR}/fpm/7.2-dev/"
docker build --no-cache -t asimlqt/php-fpm:7.2-dev .
docker push asimlqt/php-fpm:7.2-dev

docker pull php:7.3-fpm
cd "${WORKDIR}/fpm/7.3/"
docker build --no-cache -t asimlqt/php-fpm:7.3 .
docker push asimlqt/php-fpm:7.3

cd "${WORKDIR}/fpm/7.3-dev/"
docker build --no-cache -t asimlqt/php-fpm:7.3-dev .
docker push asimlqt/php-fpm:7.3-dev

docker pull php:7.4-fpm
cd "${WORKDIR}/fpm/7.4/"
docker build --no-cache -t asimlqt/php-fpm:7.4 .
docker push asimlqt/php-fpm:7.4

cd "${WORKDIR}/fpm/7.4-dev/"
docker build --no-cache -t asimlqt/php-fpm:7.4-dev .
docker push asimlqt/php-fpm:7.4-dev

docker pull php:8.0-fpm
cd "${WORKDIR}/fpm/8.0/"
docker build --no-cache -t asimlqt/php-fpm:8.0 .
docker push asimlqt/php-fpm:8.0

cd "${WORKDIR}/fpm/8.0-dev/"
docker build --no-cache -t asimlqt/php-fpm:8.0-dev .
docker push asimlqt/php-fpm:8.0-dev

docker pull php:8.1-fpm
cd "${WORKDIR}/fpm/8.1/"
docker build --no-cache -t asimlqt/php-fpm:8.1 .
docker push asimlqt/php-fpm:8.1

cd "${WORKDIR}/fpm/8.1-dev/"
docker build --no-cache -t asimlqt/php-fpm:8.1-dev .
docker push asimlqt/php-fpm:8.1-dev

docker pull php:8.2-fpm
cd "${WORKDIR}/fpm/8.2/"
docker build --no-cache -t asimlqt/php-fpm:8.2 .
docker push asimlqt/php-fpm:8.2

cd "${WORKDIR}/fpm/8.2-dev/"
docker build --no-cache -t asimlqt/php-fpm:8.2-dev .
docker push asimlqt/php-fpm:8.2-dev
