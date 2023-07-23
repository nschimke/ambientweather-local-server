#!/bin/bash
set -e
set -x

#chown -R awuser:awuser /app
#chmod 770 -R /app

if [[ "$1" == "api" ]]; then
    exec ./api/Api
elif [[ "$1" == "pyroscope" ]]; then
    echo Launching with Pyroscope
    exec pyroscope exec -spy-name dotnetspy -user-name awuser -group-name awuser ./api/Api
else
   echo "Nothing to do."
fi
