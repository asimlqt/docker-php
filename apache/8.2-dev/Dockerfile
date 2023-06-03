FROM asimlqt/php-apache:8.2
LABEL org.opencontainers.image.authors="asimlqt22@gmail.com"

COPY ./etc/000-default.conf /etc/apache2/sites-available/
COPY ./etc/php.ini /usr/local/etc/php/

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        ssh \
        wget \
        unzip \
    && wget -O /usr/local/bin/composer "https://getcomposer.org/composer.phar" \
    && chmod +x /usr/local/bin/composer \
    && pecl install xdebug-3.2.1 \
    && docker-php-ext-enable xdebug \
    && mkdir -p /var/www/.composer/cache \
    && chmod -R 777 /var/www/.composer
