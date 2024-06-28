# Introduction

This project contains PHP/Apache docker images that extend the standard PHP docker images with popular modules pre-installed.

# Image Types

There are 2 types of docker images, `php-fpm` and `php-apache` which comes with the apache web server pre-installed.  

Each of these images has 2 variants, with `-dev` and without. The only difference is that the `-dev` images come with xdebug and symfony cli pre-installed.


# Basic Usage

```
docker run -d -p 80:80 --name my-apache-php-app -v "$PWD":/var/www/html asimlqt/php-apache:8.3
```
