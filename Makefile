
 
build:
	docker-compose -f docker-compose.yml up  --build 
clean:
	docker-compose -f docker-compose.yml down -v
cache:
	docker system prune -af
