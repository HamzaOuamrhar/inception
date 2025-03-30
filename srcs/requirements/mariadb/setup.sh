# service mariadb start

mysqladmin -u root password $ROOT_PASSWORD

mysql -u root -p$ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;"
mysql -u root -p$ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS '$USER' IDENTIFIED BY '$PASSWORD';"
mysql -u root -p$ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$USER'@'%';"
mysql -u root -p$ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

# service mariadb stop

mysqld_safe  --bind-address=0.0.0.0