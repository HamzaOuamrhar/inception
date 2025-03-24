all: up

up:
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down
	
clean:
	docker-compose -f srcs/docker-compose.yml down --rmi all

cd:
	docker build -t cd_i srcs/requirements/bonus/cadvisor
	docker run -d \
	--name=cd \
	-p 7070:8080 \
	-v /:/rootfs:ro \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v /sys:/sys:ro \
	-v /var/lib/docker/:/var/lib/docker:ro \
	cd_i

i:
	docker stop cd
	docker rm cd
	docker rmi cd_i