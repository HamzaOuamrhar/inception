all: up

up:
	docker-compose -f srcs/requirements/docker-compose.yml up -d

down:
	docker-compose -f srcs/requirements/docker-compose.yml down
	
clean:
	docker-compose -f srcs/requirements/docker-compose.yml down --rmi all
