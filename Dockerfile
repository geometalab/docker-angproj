FROM mdillon/postgis:11-alpine

LABEL maintainer="Samuel Kurath"

COPY angproj /docker-entrypoint-initdb.d/angproj
COPY init-angproj-db.sh /docker-entrypoint-initdb.d/z_init-angproj-db.sh

RUN chmod +x /docker-entrypoint-initdb.d/z_init-angproj-db.sh
RUN chmod +x -R /docker-entrypoint-initdb.d/angproj

