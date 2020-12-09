#!/bin/bash -e


FIRST_START_DONE="${CONTAINER_STATE_DIR}/nginx-first-start-done"
echo -n "Waiting auto envsubst "
while [ ! -e "$FIRST_START_DONE" ]
do
  echo -n "."
  sleep 0.1
done
echo "ok"

exec /usr/sbin/nginx -g "daemon off;"
