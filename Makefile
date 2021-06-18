compose = docker-compose

build :
				${compose} build --force-rm --no-cache

start :
				${compose} up -d

stop :
				${compose} down
				
debug :
				${compose} --verbose up

reload: stop start

prune :
				docker container prune -f
				
image-prune :
				docker images prune -f
				
rm-all:
				docker stop $$(docker ps -aq) && docker rm $$(docker ps -aq)

rmi :
				docker rmi stockstalker_backend & docker rmi stockstalker_frontend & docker rmi stockstalker_predictor & docker rmi stockstalker_robinhood & docker rmi stockstalker_nginx

rmi-all:
				docker rmi $$(docker images -q)

start-watchtower :
				docker run -d \
                --name watchtower \
                -v /var/run/docker.sock:/var/run/docker.sock \
                containrrr/watchtower \
                --interval 30 \
				--cleanup

stop-watchtower :
				docker stop watchtower

rm-watchtower :
				docker rm watchtower

rmi-watchtower :
				docker rmi containrrr/watchtower
