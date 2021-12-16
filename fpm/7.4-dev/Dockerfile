FROM asimlqt/php-fpm:7.4
LABEL org.opencontainers.image.authors="asimlqt22@gmail.com"

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
    && pecl install xdebug-3.1.2 \
    && docker-php-ext-enable xdebug \
    && mkdir -p /.composer/cache \
    && chmod -R 777 /.composer
