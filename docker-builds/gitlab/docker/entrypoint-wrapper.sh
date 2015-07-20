#!/bin/bash

THE_HOST=${DB_HOST:-${POSTGRESQL_PORT_5432_TCP_ADDR}}
THE_PORT=${DB_PORT:-${POSTGRESQL_PORT_5432_TCP_PORT}}


LOOPS=20

#wait for mysql
i=0
while ! nc $THE_HOST $THE_PORT >/dev/null 2>&1 < /dev/null; do
  i=$((i + 1))
  if [ $i -ge $LOOPS ]; then
    echo "$(date) - ${THE_HOST}:${THE_PORT} still not reachable, giving up"
    exit 1
  fi
  echo "$(date) - waiting for ${THE_HOST}:${THE_PORT}..."
  sleep 2
done

sleep 5

echo "Seems that the bloody postgres is UP!"

exec /sbin/entrypoint.sh app:start