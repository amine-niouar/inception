.PHONY: build up down cache
 
build:
	docker-compose -f docker-compose.yml build 
up:
	docker-compose -f docker-compose.yml up 
down:
	docker-compose -f docker-compose.yml down 
cache:
	docker system prune -af
