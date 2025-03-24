all: up

up:
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down
	
clean:
	docker-compose -f srcs/docker-compose.yml down --rmi all

ad:
	docker build -t ad_i srcs/requirements/bonus/adminer
	docker run -d --env-file srcs/.env --name ad ad_i

i:
	docker stop ad
	docker rm ad
	docker rmi ad_i