.PHONY: build up down cache


build:
	docker-compose -f srcs/docker-compose.yml build 
up:
	docker-compose -f srcs/docker-compose.yml up 
down:
	docker-compose -f srcs/docker-compose.yml down -v
rm:
	rm -rf /home/leet/data/site/*  /home/leet/data/db/*
cache:
	docker system prune -af
