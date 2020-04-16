#!/bin/bash
docker kill zookeeper-test || true
docker rm zookeeper-test || true
docker kill kafka-test || true
docker rm kafka-test || true
docker network rm kafka-test || true
