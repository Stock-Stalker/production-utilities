build:
	docker-compose -f docker-compose.dev.yml build

start:
	docker-compose -f docker-compose.dev.yml up --build

stop:
	docker-compose down

start-prod:
	docker-compose up -d
