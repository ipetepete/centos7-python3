FROM centos:centos7


WORKDIR /usr/src
COPY installdeps.sh .

RUN ./installdeps.sh
