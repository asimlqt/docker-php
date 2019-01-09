FROM asimlqt/php-fpm:7.1
MAINTAINER Asim Liaquat <asimlqt22@gmail.com>

COPY ./etc/php.ini /usr/local/etc/php/

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        wget \
        git \
        ssh \
    && wget -O /usr/local/bin/composer "https://getcomposer.org/composer.phar" \
    && chmod +x /usr/local/bin/composer \
    && pecl install xdebug-2.6.1 \
    && docker-php-ext-enable xdebug
