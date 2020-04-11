FROM openjdk:8-jdk-slim
ADD http://mirror.cc.columbia.edu/pub/software/apache/kafka/2.4.1/kafka_2.13-2.4.1.tgz .
RUN tar -xvf kafka_2.13-2.4.1.tgz
RUN mv kafka_2.13-2.4.1 kafka
EXPOSE 9093/tcp
EXPOSE 9092/tcp
CMD ["/kafka/bin/kafka-server-start.sh","/server.properties"]
