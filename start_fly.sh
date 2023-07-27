#!/bin/sh

set -eu

echo "Starting on Fly ..."
exec /cockroach/cockroach start \
  --insecure \
  --logtostderr \
  --locality=region=$FLY_REGION \
  --cluster-name=$FLY_APP_NAME \
  --join=$FLY_APP_NAME.internal:36257 \
  --advertise-addr=$(hostname -f) \
  --store=attrs=ssd,path=/cockroach/cockroach-data
