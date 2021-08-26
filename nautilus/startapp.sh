#!/bin/sh

NAUTILUS_ROOT=${NAUTILUS_ROOT:="/"}

set -ex

export HOME=/config
mkdir -p /config/xdg/config/nautilus
exec nautilus "$NAUTILUS_ROOT"
