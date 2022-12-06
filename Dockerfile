FROM amazonlinux:latest

RUN amazon-linux-extras install -y \
    epel \
    nginx1 \
    php8.0

RUN yum update \
    && yum install -y supervisor \
    vim  \
    wget \
    && yum clean all

COPY supervisor/supervisord.conf /etc/supervisord.conf
COPY src /var/www/html

CMD [ "/usr/bin/supervisord" ]

