FROM openjdk:8-jdk-slim
ADD http://apache.claz.org/kafka/2.2.0/kafka_2.11-2.2.0.tgz .
RUN tar -xvf kafka_2.11-2.2.0.tgz
RUN mv kafka_2.11-2.2.0 kafka
EXPOSE 9093/tcp
EXPOSE 9092/tcp
CMD ["/kafka/bin/kafka-server-start.sh","/server.properties"]
