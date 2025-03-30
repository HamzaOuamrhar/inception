envsubst < nginx.conf > /etc/nginx/nginx.conf

mkdir /var/me

cp index.html /var/me
cp index.css /var/me

nginx