FROM debian:11
RUN apt-get update && apt-get upgrade && apt-get install -y nginx openssl gettext
EXPOSE 443
COPY tools/nginx.conf .
COPY tools/script.sh .
RUN chmod +x script.sh
CMD ./script.sh
