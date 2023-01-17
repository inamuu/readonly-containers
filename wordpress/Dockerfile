FROM wordpress:6.1.1-php8.2-apache

RUN apt update && \
    apt install -y \
    iputils-ping \
    net-tools \
    procps \
    vim \
    && apt clean

VOLUME /tmp
VOLUME /var/run/apache2
VOLUME /var/www/html

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
