FROM php:7.1-apache
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
        libpng12-dev \
        libssl-dev \
        libicu-dev \
        libbz2-dev \
        libmagickcore-dev \
        libmagickwand-dev \
    && docker-php-ext-install -j$(nproc) bcmath exif iconv intl mcrypt mysqli opcache pdo_mysql soap zip \
    && docker-php-ext-configure bz2 --with-bz2=/usr/include/ \
    && docker-php-ext-install -j$(nproc) bz2 \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && pecl install apcu-5.1.8 \
    && pecl install imagick-3.4.3 \
    && pecl install mongodb-1.3.0 \
    && docker-php-ext-enable apcu imagick mongodb