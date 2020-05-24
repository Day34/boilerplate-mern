#!/bin/bash

function start()
{
    cp .env.local .env
    docker-compose \
      -f ./docker-compose/docker-compose.base.web.yml \
      -f ./docker-compose/docker-compose.local.web.yml \
      -f ./docker-compose/docker-compose.base.admin.yml \
      -f ./docker-compose/docker-compose.local.admin.yml \
      -f ./docker-compose/docker-compose.base.wallet.yml \
      -f ./docker-compose/docker-compose.local.wallet.yml \
      -f ./docker-compose/docker-compose.base.cron.yml \
      -f ./docker-compose/docker-compose.local.cron.yml \
      -f ./docker-compose/docker-compose.local.mongo.yml \
      -f ./docker-compose/docker-compose.local.redis.yml \
      up --build
}

echo "Docker Run"
start # 시작