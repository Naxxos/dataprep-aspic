FROM postgis/postgis:14-3.3-alpine

RUN mkdir -p /docker-entrypoint-initdb.d

COPY ./15_init-aspic.sh /docker-entrypoint-initdb.d/15_init-aspic.sh

COPY ./exp_sch_aspic_prod_20221012.dmp.bz2 /docker-entrypoint-initdb.d/dump/aspic.dmp.bz2
RUN bunzip2 /docker-entrypoint-initdb.d/dump/aspic.dmp.bz2
RUN ln -s /docker-entrypoint-initdb.d/dump/aspic.dmp /docker-entrypoint-initdb.d/aspic.sql
