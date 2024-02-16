FROM php:8.1-fpm

RUN apt-get update \
    && apt-get install -y \
        wget \
        unzip \
        libzip-dev \
    && docker-php-ext-install zip

RUN pecl install xdebug

RUN docker-php-ext-enable xdebug

COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

EXPOSE 9000