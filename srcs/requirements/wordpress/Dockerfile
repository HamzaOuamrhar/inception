FROM debian:11
RUN apt-get update && apt-get install -y curl php-cli php-mysql
RUN apt-get install -y php-fpm
RUN apt-get install -y mariadb-client
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
COPY tools/setup.sh /usr/local/bin
RUN chmod +x /usr/local/bin/setup.sh
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
WORKDIR /var/www/html
RUN wp core download --allow-root && mv wp-config-sample.php wp-config.php
EXPOSE 9000
CMD /usr/local/bin/setup.sh