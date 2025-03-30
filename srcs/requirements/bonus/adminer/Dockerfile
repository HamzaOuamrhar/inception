FROM debian:11
RUN apt update && apt-get install -y curl php-mysql php nginx
RUN curl -L -o adminer.php https://github.com/vrana/adminer/releases/download/v4.7.8/adminer-4.7.8.php
COPY nginx.conf /etc/nginx
COPY script.sh .
RUN chmod +x script.sh
CMD ./script.sh