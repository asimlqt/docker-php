FROM php:5.6-apache
MAINTAINER Asim Liaquat <asimlqt22@gmail.com>

COPY ./etc/000-default.conf /etc/apache2/sites-available/
COPY ./etc/php.ini /usr/local/etc/php/

RUN set -x \
    && a2enmod rewrite \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libssl-dev \
        libicu-dev \
        libzip-dev \
        libbz2-dev \
        libmagickcore-dev \
        libmagickwand-dev \
        libssh2-1-dev \
        libgmp-dev \
        libpq-dev \
    && ln -s /usr/include/x86_64-linux-gnu/gmp.h /usr/include/gmp.h \
    && docker-php-ext-install -j$(nproc) bcmath exif iconv intl mcrypt mysqli opcache pdo_mysql soap zip \
    && docker-php-ext-configure bz2 --with-bz2=/usr/include/ \
    && docker-php-ext-install -j$(nproc) bz2 \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pgsql pdo_pgsql \
    && docker-php-ext-configure gmp --with-gmp=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gmp \
    && pecl install apcu-4.0.11 \
    && pecl install imagick-3.4.3 \
    && pecl install mongodb-1.3.0 \
    && pecl install mongo-1.6.16 \
    && pecl install redis-4.1.1 \
    && pecl install ssh2-0.13 \
    && docker-php-ext-enable apcu imagick mongodb mongo redis ssh2
