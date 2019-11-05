#!/bin/sh -l
if [ "$WITH_DOCKERD" ]; then
   sudo dockerd &
   sleep 5
   chmod 777 /var/run/docker.sock

fi
"$@"