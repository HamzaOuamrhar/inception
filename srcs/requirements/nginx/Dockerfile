FROM debian:11
RUN apt-get update && apt-get upgrade && apt-get install -y nginx openssl
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
