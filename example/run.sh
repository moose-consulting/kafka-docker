#!/bin/bash
docker network create kafka-test
docker run -d --name zookeeper-test --net kafka-test zookeeper:3.6.0
docker run -d --name kafka-test --mount type=bind,source="$(pwd)",target=/etc/kafka --net kafka-test -p 9092:9092 mooseconsulting/kafka:2.13-2.4.1
