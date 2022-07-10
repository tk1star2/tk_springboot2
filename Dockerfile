FROM ubuntu:18.04
MAINTAINER tk1star2@gmail.com
RUN apt-get -y update
RUN apt-get -y install -y openjdk-11-jdk

#WORKDIR /Desktop/TK

EXPOSE 2022
#EXPOSE 8080
COPY ./project_1/build/libs/demo-0.0.1-SNAPSHOT.jar .
CMD java -jar demo-0.0.1-SNAPSHOT.jar

