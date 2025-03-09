FROM debian:11
WORKDIR /var/www/html
RUN apt-get update && apt-get install -y curl php-cli php-mysql
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
RUN wp core download --allow-root && mv wp-config-sample.php wp-config.php