#!/bin/bash
# Copyright (c) Alexander Trost 2017
# Licensed under MIT license.
# https://github.com/galexrt/docker-node_exporter-smartmon/blob/master/entrypoint.sh

if [ ! -z "$DEBUG" ]; then
    set -ex
fi


INTERVAL="${INTERVAL:-300}"

echo "Starting smartmon.sh loop ..."
while true; do
    /bin/smartmon.sh | sponge /var/lib/node_exporter/smartmon.prom
    sleep "$INTERVAL"
done
