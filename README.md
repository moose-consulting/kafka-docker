# kafka-docker
Simple Docker container for Kafka

# Usage

Tagged as `SCALA_VERSION`-`KAFKA_VERSION`.

Place Kafka configuration at `/etc/kafka/server.properties`. 

```
docker run -d --mount type=bind,source=/path/to/config/dir,target=/etc/kafka mooseconsulting/kafka:2.13-2.4.1
```
