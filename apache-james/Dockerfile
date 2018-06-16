ENV JAMES_URL=http://www-us.apache.org/dist/james/server/james-server-app-3.0.1-app.zip

FROM openjdk:8

RUN apt-get update && \
apt-get install -y zip && \
wget $JAMES_URL && \
unzip james-server*.zip && \
rm james-server*.zip && \
mv james-server* james
