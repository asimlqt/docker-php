FROM asimlqt/php-fpm:8.2
LABEL org.opencontainers.image.authors="asimlqt22@gmail.com"

COPY ./etc/php.ini /usr/local/etc/php/

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        ssh \
        unzip \
    && pecl install xdebug-3.2.1 \
    && docker-php-ext-enable xdebug \
    && wget https://get.symfony.com/cli/installer -O - | bash \
    && cp /root/.symfony5/bin/symfony /usr/local/bin/
