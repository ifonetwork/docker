#!/bin/sh

echo "\n> Remove all containers"
docker rm $(docker ps -a -q)

echo "\n> Remove all images"
docker rmi $(docker images -q) -f

echo "\n> Remove all networks"
docker network rm $(docker network ls -q)
