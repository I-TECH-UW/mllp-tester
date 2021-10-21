FROM debian:buster-slim

WORKDIR /test

RUN apt-get update && apt-get -y install socat

ADD ./messages ./messages

ADD ./tests.sh ./

ENTRYPOINT [ "/test/tests.sh" ]