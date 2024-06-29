# Introduction

This project contains PHP/Apache docker images that extend the standard PHP docker images with popular modules pre-installed.

# Image types

There are 2 types of docker images, `php-fpm` and `php-apache` which comes with the apache web server pre-installed.  

Each of these images has 2 variants, with `-dev` and without. The only difference is that the `-dev` images come with xdebug and symfony cli pre-installed.

# Available extensions

The following extensions are available in addition to those in the official PHP docker image.

`apcu` `bz2` `bcmath` `exif` `gd` `iconv` `intl` `mongodb` `mysqli` `opcache` `pdo_mysql` `pdo_pgsql` `pgsql`
`redis` `rdkafka` `sockets` `xdebug (-dev images only)` `zip`

# Basic usage

```
docker run -d --name php -v "$PWD":/var/www/html asimlqt/php-fpm:8.3
```

# Interactive shell on the container

To gain access to an interactive shell on the container, run the following command

```
docker exec -it -u admin php bash
```

All the docker images provide an `admin` user to execute basic commands such as `composer` or run cli scripts etc.

This is a non-root user and should be sufficient for most cases. However if you need to run commands as root then exclude the user:

```
docker exec -it php bash
```

# Install symfony framework using docker compose

Lets run through a more complex example using docker compose. We will setup a Symfony Framework project from scratch.

First create an empty directory, we will use `myapp` to refer to it.

Inside myapp, create a docker compose file:

```
// docker-compose.yml

version: "3"

services:

  web:
    container_name: web
    build:
      context: ./docker
    volumes:
      - .:/var/www/html
    ports:
      - "80:80"
```

Next create a `docker` directory inside myapp and add the following 3 files into it.

```
// Dockerfile

FROM asimlqt/php-apache:8.3-dev

COPY ./000-default.conf /etc/apache2/sites-available/

COPY ./php.ini /usr/local/etc/php/
```

```
// php.ini

memory_limit = 1024M
date.timezone = Etc/UTC
log_errors = On
error_log = /dev/stderr
```

```
// 000-default.conf

<VirtualHost *:80>
    DocumentRoot /var/www/html/public/
    <Directory /var/www/html/public/>
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
```

Now open a terminal and execute the following command (from the myapp directory) to start the web container:

```
docker-compose up -d
```

Once the container has started we can log into it:

```
docker-compose exec -u admin web bash
```

The symfony installer fetches data from github so we need to make sure our github user is configured correctly. Use your actual github email and name in the following commands.

```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

We can then go ahead and install the latest LTS release:

```
symfony new app --version=lts
```

Finally we will copy all the files from the app folder into myapp and remove the files we don't need:

```
shopt -s dotglob
mv app/* .
rm -rf .git
rmdir app
```

Congratulations! the installation is complete.

If you access `localhost` in the browser you should see the default Symfony welcome page. 

