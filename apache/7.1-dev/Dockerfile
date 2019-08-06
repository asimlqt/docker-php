FROM asimlqt/php-apache:7.1
MAINTAINER Asim Liaquat <asimlqt22@gmail.com>

COPY ./etc/000-default.conf /etc/apache2/sites-available/
COPY ./etc/php.ini /usr/local/etc/php/

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        wget \
        git \
        ssh \
        unzip \
    && wget -O /usr/local/bin/composer "https://getcomposer.org/composer.phar" \
    && chmod +x /usr/local/bin/composer \
    && pecl install xdebug-2.5.5 \
    && docker-php-ext-enable xdebug \
    && mkdir -p /.composer/cache \
    && chmod -R 777 /.composer
