FROM lpoaura/postgresql-client

RUN apt-get update && apt-get -y install powa-web

EXPOSE 8888

ENTRYPOINT [ "powa-web" ]