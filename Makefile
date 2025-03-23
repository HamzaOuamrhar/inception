all: up

up:
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down
	
clean:
	docker-compose -f srcs/docker-compose.yml down --rmi all

ftp:
	docker build -t ftp_i srcs/requirements/bonus/ftp
	docker run -p 20001:21 -d --env-file srcs/.env --name ftp ftp_i

i:
	docker stop ftp
	docker rm ftp
	docker rmi ftp_i