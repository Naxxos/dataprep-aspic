#!/bin/bash

set -e
# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

mkdir -pv /var/lib/postgresql/data/t_data1

psql -U aspic --dbname="$POSTGRES_DB" -c "
    CREATE TABLESPACE t_data1 LOCATION '/var/lib/postgresql/data/t_data1';
"