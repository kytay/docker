FROM openjdk:8

# ENV KAFKA_URL=http://www-us.apache.org/dist/kafka/1.1.0/kafka_2.12-1.1.0.tgz 
ENV KAFKA_URL=http://apache.mirror.amaze.com.au/kafka/1.1.0/kafka_2.12-1.1.0.tgz

# kafka ports
EXPOSE 9092/tcp
# zookeeper ports
EXPOSE 2181/tcp
EXPOSE 2888/tcp
EXPOSE 3888/tcp

RUN apt-get update && \
wget $KAFKA_URL && \
tar -xvf kafka*.tgz && \
rm kafka*.tgz && \
mv kafka* kafka

COPY kafka-init.sh /kafka

RUN chmod +x /kafka/*.sh
CMD /kafka/kafka-init.sh
