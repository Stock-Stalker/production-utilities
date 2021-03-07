build:
	docker-compose build

start:
	docker-compose up

stop:
	docker-compose down

start-prod:
	docker-compose -f docker-compose.prod.yml up --build
