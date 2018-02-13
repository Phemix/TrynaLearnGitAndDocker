#!/bin/bash


docker network create --driver overlay --scope swarm fix
docker stack deploy -c docker-compose.yml test
echo "services already started and running"
