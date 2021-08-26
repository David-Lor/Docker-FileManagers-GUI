#!/bin/sh

ROOT_PATH=${ROOT_PATH:="/"}

set -ex

export HOME=/config
mkdir -p /config/xdg/config/nautilus
exec nautilus "$ROOT_PATH"
