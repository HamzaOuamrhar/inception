FROM debian:11
RUN apt update && apt-get install -y nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html .
COPY index.css .
COPY script.sh .
RUN chmod +x script.sh
CMD ./script.sh