#!/bin/bash

docker build --network=host -t lambdalayer:latest .

docker run -d --name lambdalayer lambdalayer:latest tail -f /dev/null

docker cp lambdalayer:python.zip ./

docker rm -f lambdalayer
