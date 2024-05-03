FROM debian:11

EXPOSE 9000

RUN apt update -y && apt upgrade -y
RUN apt -y install wget && apt install -y php7.4 php-fpm php-mysql

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /run/php
COPY  ./conf/script.sh /script.sh
RUN chmod 0777 /script.sh


CMD ["./script.sh"]
