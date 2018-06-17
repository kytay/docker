FROM openjdk:8

# ENV JAMES_URL=http://www-us.apache.org/dist/james/server/james-server-app-3.0.1-app.zip
ENV JAMES_URL=http://apache.mirror.amaze.com.au/james/server/james-server-app-3.0.1-app.zip

#james imap and smtp ports
EXPOSE 993/tcp
EXPOSE 465/tcp

RUN apt-get update && \
apt-get install -y zip && \
wget $JAMES_URL && \
unzip james-server*.zip && \
rm james-server*.zip && \
mv james-server* james
