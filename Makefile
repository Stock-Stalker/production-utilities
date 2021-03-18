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

lint :
				cd backend && npm run lint && cd ../frontend && npm run lint && cd ..
				
lint-frontend :
				cd ../frontend && npm run lint && cd ..
				
lint-backend:
				cd backend && npm run lint && cd ..

start-prod :
				docker-compose up -d

debug-prod:
				docker-compose --verbose up

prune :
				docker container prune -f
				
image-prune :
				docker images prune -f

rmi :
				docker rmi stockstalker_backend && docker rmi stockstalker_frontend && docker rmi stockstalker_predictor

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
