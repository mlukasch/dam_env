#!/usr/bin/env bash
mkdir -p ./volumes/redis/data
mkdir -p ./volumes/dam
docker-compose rm -f
docker-compose build
docker-compose up