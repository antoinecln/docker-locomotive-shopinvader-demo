#!/bin/bash

mongo --host db --eval='db.getMongo().getDBNames()' | grep -q shopinvader

if [ $? -eq 0 ]
then
  echo "Database already exist"
else
  echo "Start loading database"
  mongorestore --host db -d shopinvader /data/shopinvader
  echo "Demo database loaded"
fi

/usr/src/bin/docker-entrypoint.sh "$@"
