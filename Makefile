build :
	docker-compose -f docker-compose.dev.yml build

start :
	docker-compose -f docker-compose.dev.yml up --build

stop :
	docker-compose down

start-prod :
	docker-compose up -d

debug :
  docker-compose -f docker-compose.dev.yml --verbose up

rm :
  docker container stop $(docker container ls –aq) && docker container rm $(docker container ls –aq)

rmi :
	docker rmi $(docker images -q)
