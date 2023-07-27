#!/bin/sh

set -eu

echo "Starting on Fly ..."
exec /cockroach/cockroach start \
  --insecure \
  --locality=fly_region=$FLY_REGION \
  --cluster-name=$FLY_APP_NAME \
  --join=$FLY_APP_NAME.internal \
  --listen-addr=:36257 \
  --sql-addr:26257 \
  --advertise-addr=$(hostname -f) \
  --store=attrs=ssd,path=/cockroach/cockroach-data
