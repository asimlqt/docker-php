FROM php:8.2-fpm
LABEL org.opencontainers.image.authors="asimlqt22@gmail.com"

COPY ./etc/php.ini /usr/local/etc/php/

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        wget \
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
        librdkafka-dev \
    && useradd -m admin \
    && docker-php-ext-install -j$(nproc) sockets bcmath exif iconv intl mysqli opcache pdo_mysql zip \
    && docker-php-ext-configure sockets --enable-sockets \
    && docker-php-ext-configure bz2 --with-bz2=/usr/include/ \
    && docker-php-ext-install -j$(nproc) bz2 \
    && docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pgsql pdo_pgsql \
    && docker-php-ext-install -j$(nproc) gmp \
    && pecl install apcu-5.1.22 \
    && pecl install mongodb-1.15.3 \
    && pecl install redis-5.3.7 \
    && pecl install rdkafka-6.0.3 \
    && docker-php-ext-enable apcu mongodb redis rdkafka \
    && wget -O /usr/local/bin/composer "https://getcomposer.org/composer.phar" \
    && chmod +x /usr/local/bin/composer
