FROM postgres:13

LABEL maintainer="PostGIS Project - https://postgis.net"

ENV POSTGIS_MAJOR 2.5
ENV POSTGIS_VERSION 2.5.5+dfsg-1.pgdg90+2



RUN apt-get update \
      && apt-cache showpkg postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR \
      && apt-get install -y --no-install-recommends \
           locales \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR-scripts \
      && localedef -i fr_FR -c -f UTF-8 -A /usr/share/locale/locale.alias fr_FR.UTF-8 \
      && rm -rf /var/lib/apt/lists/*

ENV LANG fr_FR.utf8

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/10_postgis.sh
COPY ./update-postgis.sh /usr/local/bin

