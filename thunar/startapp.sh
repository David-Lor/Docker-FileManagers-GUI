#!/bin/sh

THUNAR_ROOT=${THUNAR_ROOT:="/"}

set -ex

export HOME=/config
exec thunar "$THUNAR_ROOT"
