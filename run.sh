#!/bin/bash

# Setup the client.
$WERCKER_ROOT/mc config host add $WERCKER_MINIOSYNC_ALIAS $WERCKER_MINIOSYNC_URL $WERCKER_MINIOSYNC_ACCESS_KEY $WERCKER_MINIOSYNC_SECRET_KEY

# Run the mirroring process.
$WERCKER_ROOT/mc mirror $WERCKER_MINIOSYNC_FLAGS $WERCKER_MINIOSYNC_SRC $WERCKER_MINIOSYNC_ALIAS/$WERCKER_MINIOSYNC_DST
