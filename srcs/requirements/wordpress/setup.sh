wp config set SERVER_PORT 3306 --allow-root
wp config set DB_NAME $DATABASE_NAME --allow-root --path=/var/www/html
wp config set DB_USER $USER --allow-root --path=/var/www/html
wp config set DB_PASSWORD $PASSWORD --allow-root --path=/var/www/html
wp config set DB_HOST 'mariadb:3306' --allow-root --path=/var/www/html
wp config set WP_REDIS_HOST redis --allow-root --path=/var/www/html
wp config set WP_REDIS_PORT 6379 --allow-root --path=/var/www/html

wp config set WP_HOME https://houamrha.42.fr --allow-root --path=/var/www/html
wp config set WP_SITEURL https://houamrha.42.fr --allow-root --path=/var/www/html

until mysql -h mariadb -u $USER -p$PASSWORD -e 'SHOW DATABASES;'; do
  echo 'Waiting for MariaDB to be available...'
  sleep 2
done


wp core install --url=$DOMAIN --title=Inception --admin_user=$USER --admin_password=$PASSWORD --admin_email=$WP_EMAIL --allow-root --path=/var/www/html
wp user create $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_PASSWORD --allow-root --path=/var/www/html

wp plugin install redis-cache --activate --allow-root

mkdir /run/php

sed -i 's#listen = /run/php/php7.4-fpm.sock#listen = 0.0.0.0:9000#' /etc/php/7.4/fpm/pool.d/www.conf

# wp redis enable --allow-root


/usr/sbin/php-fpm7.4 -F