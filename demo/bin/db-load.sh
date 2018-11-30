#!/bin/bash

mongo --host $MONGODB_DEV_HOST --eval='db.getMongo().getDBNames()' | grep -q shopinvader

if [ $? -eq 0 ]
then
  echo "Database already exist"
else
  echo "Start loading database"
  mongorestore --host $MONGODB_DEV_HOST -d shopinvader /data/shopinvader
  echo "Demo database loaded"
fi

/usr/src/bin/docker-entrypoint.sh "$@"
