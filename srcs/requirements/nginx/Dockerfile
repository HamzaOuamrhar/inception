FROM debian:11
RUN apt-get update && apt-get upgrade && apt-get install -y nginx openssl
COPY tools/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
