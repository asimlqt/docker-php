# Introduction

This project contains PHP/Apache docker images that extend the standard PHP docker images with popular modules pre-installed.

# Image Types

There are 2 types of docker images, `php-fpm` and `php-apache` which comes with the apache web server pre-installed.  

Each of these images has 2 variants, with `-dev` and without. The only difference is that the `-dev` images come with xdebug and symfony cli pre-installed.


# Basic Usage

```
docker run -d --name php -v "$PWD":/var/www/html asimlqt/php-fpm:8.3
```

# Logging into the container

All the docker images provide an `admin` user to provide access to the container and execute basic commands e.g. `composer`

```
docker exec -it -u admin php bash
```

This is a non-root user and should be sufficient in most cases. If however you need to run commands as root then exclude the user:

```
docker exec -it php bash
```
