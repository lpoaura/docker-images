FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt-get -y install wget lsb-release gnupg

RUN echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list && \
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - 

RUN apt-get update && apt-get -y install postgresql-client

