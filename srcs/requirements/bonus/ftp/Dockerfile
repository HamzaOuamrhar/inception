FROM debian:11
RUN apt-get update && apt-get install -y vsftpd ftp
EXPOSE 21 20000-30000
COPY tools/setup.sh .
RUN chmod +x setup.sh
CMD ./setup.sh