#!/bin/sh

if [ -z "$INSTANCE_ID" ]; then
  INSTANCE_ID=$(hostname | sed 's/.*-//')
fi

export INSTANCE_ID

exec "$@"
