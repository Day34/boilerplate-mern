#!/bin/bash

function start()
{
    docker-compose \
      -f ./docker-compose.yml \
      up --build
}

echo "Docker Run"
start # 시작