FROM php:7.4-cli-alpine

RUN addgroup -g 1000 app && adduser -u 1000 -G app -s /bin/sh -D app

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/bin --filename=composer --quiet

WORKDIR /app