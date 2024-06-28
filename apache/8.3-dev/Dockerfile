FROM asimlqt/php-apache:8.3
LABEL org.opencontainers.image.authors="asimlqt22@gmail.com"

COPY ./etc/000-default.conf /etc/apache2/sites-available/
COPY ./etc/php.ini /usr/local/etc/php/

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        ssh \
        unzip \
    && pecl install xdebug-3.3.2 \
    && docker-php-ext-enable xdebug \
    && wget https://get.symfony.com/cli/installer -O - | bash \
    && cp /root/.symfony5/bin/symfony /usr/local/bin/
