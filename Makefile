build :
				docker-compose -f docker-compose.dev.yml build

start :
				docker-compose -f docker-compose.dev.yml up --build

stop :
				docker-compose down
				
debug :
				docker-compose -f docker-compose.dev.yml --verbose up

reload:
				docker-compose down && docker-compose -f docker-compose.dev.yml up --build

test :
				docker-compose -f docker-compose.test.yml up --build

format :
				cd backend && npm run format && cd ../frontend && npm run format && cd ..

start-prod :
				docker-compose up -d

debug-prod:
				docker-compose --verbose up

rm :
				docker container stop $(docker  ps –aq) && docker container rm $(docker ps –aq)

rmi :
				docker rmi $(docker images -q)

start-frontend :
				docker-compose -f docker-compose.frontend.yml up --build

reload-frontend :
				docker-compose down && docker-compose -f docker-compose.frontend.yml up --build
				
debug-frontend :
				docker-compose -f docker-compose.frontend.yml --verbose up --build

start-watchtower :
        docker run -d \
                --name watchtower \
                -v /var/run/docker.sock:/var/run/docker.sock \
                containrrr/watchtower \
                --interval 30

stop-watchtower :
				docker stop watchtower

rm-watchtower :
				docker rm watchtower

rmi-watchtower :
				docker rmi containrrr/watchtower
