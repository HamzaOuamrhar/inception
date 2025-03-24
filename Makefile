all: up

up:
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down
	
clean:
	docker-compose -f srcs/docker-compose.yml down --rmi all

me:
	docker build -t me_i srcs/requirements/bonus/me
	docker run -p 7777:80 -d --env-file srcs/.env --name me me_i

i:
	docker stop me
	docker rm me
	docker rmi me_i