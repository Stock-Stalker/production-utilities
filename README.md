# StockStalker - Production Utilities

## Makefile Commands

`stop`: Stop the running server

`prune`: Remove all unused containers

`image-prune`: Remove all unused images

`rm-all`: Stop and remove all containers

`rmi`: Remove stockstalker images without removing base images. Useful for speeding up build time when switching from one start script to another such as `make start` to `make test`

`rmi-all`: Remove all images

`build`: Build the development server without running the server

`start`: Start the development server at port `8080`

`reload`: Stop the development server and restart the server at port `8080`

`debug`: Start the development server in debug mode

`start-watchtower`: Start the Watchtower container

`stop-watchtower`: Stop the Watchtower container

`rm-watchtower`: Remove the Watchtower container

`rmi-watchtower`: Remove the Watchtower image
