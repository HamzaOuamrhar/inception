FROM debian:11
RUN apt-get update && apt-get install -y redis-server
WORKDIR /etc/redis
RUN echo "maxmemory 100mb" >> redis.conf
RUN echo "maxmemory-policy allkeys-lru" >> redis.conf
CMD ["redis-server", "--protected-mode", "no"]