FROM mcr.microsoft.com/mssql/server:2022-CU12-ubuntu-22.04

#16.0.4120.1-1

USER root

ADD https://packages.microsoft.com/config/ubuntu/22.04/mssql-server-2022.list /etc/apt/sources.list.d/mssql-server-2022.list

RUN apt-get update \
    && apt-get install -y mssql-server-fts \
    && apt-get clean

USER mssql

#ENTRYPOINT [ "/opt/mssql/bin/sqlservr" ]
