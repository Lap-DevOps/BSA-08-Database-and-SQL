#!/bin/bash

docker-compose down -v

CONTAINER_NAME="postgres-db"

docker rm $CONTAINER_NAME

rm -rd ./postgres

docker-compose up -d --build --build
