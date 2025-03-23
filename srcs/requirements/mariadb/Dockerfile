FROM debian:11

RUN apt-get update && apt-get install -y mariadb-server

COPY tools/setup.sh .

RUN chmod +x setup.sh

EXPOSE 3306

CMD ./setup.sh
