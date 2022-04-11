dev:
	docker-compose up --build

remove:
	docker-compose -f "docker-compose.yml" down --remove-orphans