FROM debian:11
RUN apt update && apt-get install -y nginx
COPY tools/nginx.conf /etc/nginx/nginx.conf
COPY tools/index.html .
COPY tools/index.css .
COPY tools/script.sh .
RUN chmod +x script.sh
CMD ./script.sh