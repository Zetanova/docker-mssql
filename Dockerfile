FROM mcr.microsoft.com/mssql/server:2022-CU13-ubuntu-22.04

#16.0.4120.1-1

USER root

#RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
#RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker

ADD https://packages.microsoft.com/config/ubuntu/22.04/mssql-server-2022.list /etc/apt/sources.list.d/mssql-server-2022.list

RUN apt-get update && apt-get install -y \
    mssql-server-fts ca-certificates \
    && apt-get clean

RUN update-ca-certificates

USER mssql

#ENTRYPOINT [ "/opt/mssql/bin/sqlservr" ]
