FROM debian:11
RUN apt-get update && apt-get install -y vsftpd ftp
EXPOSE 21 20000-20100
COPY setup.sh .
RUN chmod +x setup.sh
CMD ./setup.sh