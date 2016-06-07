#!/bin/bash

# Add local user, named cu -> short for containeruser
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

USER_ID=${LOCAL_USER_ID:-9001}

echo "Starting with UID : $USER_ID"
adduser -s /bin/bash -D  cu
export HOME=/home/cu

exec /usr/local/bin/gosu cu "$@"
