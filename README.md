<!-- logo -->
<p align="center">
  <img width="300" src="logo.png">
</p>

<!-- short description -->
<h1 align="center">StockStalker - Production Utilities </h1>

<p align="center">
    <img src="https://forthebadge.com/images/badges/works-on-my-machine.svg" />
</p>
<p align="center">
    <!-- license -->
    <img src="https://img.shields.io/github/license/Stock-Stalker/production-utilities" />
    <!-- code size  -->
    <img src="https://img.shields.io/github/languages/code-size/Stock-Stalker/production-utilities" />
    <!-- issues -->
    <img src="https://img.shields.io/github/issues/Stock-Stalker/production-utilities" />
    <!-- pull requests -->
    <img src="https://img.shields.io/github/issues-pr/Stock-Stalker/production-utilities" />
    <!-- number of commits per month -->
    <img src="https://img.shields.io/github/commit-activity/m/Stock-Stalker/production-utilities" />
    <!-- last commit -->
    <img src="https://img.shields.io/github/last-commit/Stock-Stalker/production-utilities" />
</p>

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
