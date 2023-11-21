.PHONY: build up down cache


build:
	docker-compose -f srcs/docker-compose.yml build 
up:
	docker-compose -f srcs/docker-compose.yml up  --build
down:
	docker-compose -f srcs/docker-compose.yml down 
rm:
	rm -rf /home/user/data/site/*  /home/user/data/db/*
cache:
	docker system prune -af
