FROM debian:11
RUN apt update && apt-get install -y wget
COPY tools/script.sh .
RUN chmod +x script.sh
CMD ./script.sh