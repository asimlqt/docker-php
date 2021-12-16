FROM php:7.4-apache
LABEL org.opencontainers.image.authors="asimlqt22@gmail.com"

COPY ./etc/000-default.conf /etc/apache2/sites-available/
COPY ./etc/php.ini /usr/local/etc/php/

RUN set -x \
    && a2enmod rewrite \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libssl-dev \
        libicu-dev \
        libbz2-dev \
        libssh2-1-dev \
        libgmp-dev \
        libpq-dev \
        libzip-dev \
    && docker-php-ext-install -j$(nproc) bcmath exif iconv intl mysqli opcache pdo_mysql zip \
    && docker-php-ext-configure bz2 --with-bz2=/usr/include/ \
    && docker-php-ext-install -j$(nproc) bz2 \
    && docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pgsql pdo_pgsql \
    && docker-php-ext-install -j$(nproc) gmp \
    && pecl install apcu-5.1.21 \
    && pecl install mongodb-1.12.0 \
    && pecl install redis-5.3.4 \
    && docker-php-ext-enable apcu mongodb redis
