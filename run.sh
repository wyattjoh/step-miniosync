#!/bin/bash

# Get the binary.
wget https://dl.minio.io/client/mc/release/linux-amd64/mc
chmod +x mc

# Setup the client.
./mc config host add $WERCKER_MINIOSYNC_ALIAS $WERCKER_MINIOSYNC_URL $WERCKER_MINIOSYNC_ACCESS_KEY $WERCKER_MINIOSYNC_SECRET_KEY

# Run the mirroring process.
./mc mirror $WERCKER_MINIOSYNC_FLAGS $WERCKER_MINIOSYNC_SRC $WERCKER_MINIOSYNC_ALIAS/$WERCKER_MINIOSYNC_DST
