FROM debian:stretch
LABEL maintainer="Jokecoin Developers <dev@jokecoin.org>"
LABEL description="Dockerised DashCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
