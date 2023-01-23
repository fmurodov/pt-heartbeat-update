#!/bin/sh

echo "Starting $(/usr/bin/pt-heartbeat --version) for ${DB_HOST}/${DB_NAME}"

/usr/bin/pt-heartbeat --host ${DB_HOST} \
                      --user ${DB_USER} \
                      --password ${DB_PASS} \
                      --database ${DB_NAME} \
                      --interval ${UPDATE_INTERVAL} \
                      --fail-successive-errors 2 \
                      --utc \
                      --update \
                      --replace
