# Introduction

This project contains PHP/Apache docker images that extend the standard PHP docker images with some additional common modules pre-installed.

# Images
The following images are available:
* asimlqt/php-apache:5.6-dev
* asimlqt/php-apache:5.6
* asimlqt/php-apache:7.1-dev
* asimlqt/php-apache:7.1
* asimlqt/php-apache:7.2-dev
* asimlqt/php-apache:7.2
* asimlqt/php-fpm:5.6-dev
* asimlqt/php-fpm:5.6
* asimlqt/php-fpm:7.1-dev
* asimlqt/php-fpm:7.1
* asimlqt/php-fpm:7.2-dev
* asimlqt/php-fpm:7.2

> See usage section below

The 'dev' images are the same as the non-dev images but with xdebug, composer and git pre-installed. There is also a slight difference in the default php.ini settings (see below).

# Features
### PHP Modules enabled
*The following modules are enabled by this image in addition to what the official php docker images provide*
* apcu
* bcmath
* bz2
* exif
* gd
* gmp
* iconv
* imagick
* intl
* mcrypt (php <= 7.1)
* mongo (php == 5.6)
* mongodb
* mysqli
* pdo_mysql
* pdo_pgsql
* pgsql
* redis
* soap
* ssh2
* xdebug ('-dev' images only)
* zend-opcache
* zip

### Apache modules enabled
* rewrite

### Default PHP ini settings (non-dev images)
```
memory_limit = 512M
date.timezone = Etc/UTC
```

### Default PHP ini settings (dev images)
```
memory_limit = 1024M
date.timezone = Etc/UTC
log_errors = On
error_log = /dev/stderr
xdebug.remote_enable = On
xdebug.remote_connect_back = On
```

# Usage
### Without a Dockerfile
```
docker run -d -p 80:80 --name my-apache-php-app -v "$PWD":/var/www/html asimlqt/php-apache:7.1-dev
```

### Dockerfile
To use with a custom Dockerfile simply extend the required version and copy your source files e.g.
```
FROM asimlqt/php-apache:5.6
COPY ./src /var/www/html/
```
You can them build and run the image in the standard way
```
$ docker build -t my-php-apache-image .
$ docker run -d -p 80:80 my-php-apache-image
```

### Docker Compose
```
version: "2"

services:
  web:
    image: asimlqt/php-apache:5.6
    volumes:
      - .:/var/www/html
    ports:
      - 80:80

```
You can then run it using the docker-compose command
```
$ docker-compose up
```

See [examples](https://github.com/asimlqt/docker-php/tree/master/examples)

# Specifying custom php.ini settings
To add custom php settings create a `php.ini` file, add the settings that you require and then add an entry to the Dockerfile to copy the php.ini to the correct location in the container:
```
COPY ./php.ini /usr/local/etc/php/
```
NOTE: This will override the default php.ini settings mentioned above in the "Default PHP ini settings" section. So if you do supply a custom php.ini file it's worth setting the `date.timezone` setting as well.

# Specifying a custom Apache vhost
The process is similar to specifying a custom php.ini file. Create a file called `000-default.conf`
```
<VirtualHost *:80>
    DocumentRoot /var/www/html/web/
    <Directory /var/www/html/web/>
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
```
Then copy it to the correct location in the Dockerfile
```
COPY ./000-default.conf /etc/apache2/sites-available/
```
