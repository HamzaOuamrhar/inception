#!/bin/bash

# ls -l /var/www/html => -rw-rw-rw-   1 root root   405 Mar  9 22:13 index.php


wp config set SERVER_PORT 3306 --allow-root
wp config set DB_NAME $DATABASE_NAME --allow-root --path=/var/www/html
wp config set DB_USER $USER --allow-root --path=/var/www/html
wp config set DB_PASSWORD $PASSWORD --allow-root --path=/var/www/html
wp config set DB_HOST 'mariadb:3306' --allow-root --path=/var/www/html

until mysql -h mariadb -u $USER -p$PASSWORD -e 'SHOW DATABASES;'; do
  echo 'Waiting for MariaDB to be available...'
  sleep 2
done


wp core install --url=$DOMAIN --title=Inception --admin_user=$USER --admin_password=$PASSWORD --admin_email=$WP_EMAIL --allow-root --path=/var/www/html
# wp user create $USER $WP_EMAIL --role=author --user_pass=$PASSWORD --allow-root --path=/var/www/html

echo "success............"