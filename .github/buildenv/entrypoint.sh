#!/bin/sh -l
if [ "$WITH_DOCKERD" ]; then
   sudo dockerd &
   sleep 5
   chmod 777 /var/run/docker.sock

fi
ls -lah
#fix permission which is not defined by github actions
WHOAMI=$(id -u)
sudo chown "$WHOAMI" -R  .
"$@"