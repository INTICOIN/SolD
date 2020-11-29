FROM debian:stretch
LABEL maintainer="SolD Developers <dev@sold.org>"
LABEL description="Dockerised SolDCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
