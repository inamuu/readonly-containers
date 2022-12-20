FROM amazonlinux:latest

RUN amazon-linux-extras install -y \
    epel \
    nginx1 \
    php8.0

RUN yum update \
    && yum install -y \
    procps \
    supervisor \
    vim \
    wget \
    && yum clean all

COPY supervisor/supervisord.conf /etc/supervisord.conf
COPY src/ /var/www/html/
COPY nginx/app.conf /etc/nginx/conf.d/app.conf

CMD [ "/usr/bin/supervisord" ]

