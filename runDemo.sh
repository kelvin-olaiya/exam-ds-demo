#!/bin/bash
if [ ! -f alchemist.jar ]
then
    wget https://github.com/kelvin-olaiya/exam-ds-demo/releases/latest/download/alchemist.jar
    if [ $? -ne 0 ]
    then
        exit 1
    fi
fi

# start infrastructure
docker compose build
docker compose up -d

# start client
./distribute.sh

# bring down the infrastructure
docker compose down
