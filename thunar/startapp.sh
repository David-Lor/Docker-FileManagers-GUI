#!/bin/sh

ROOT_PATH=${ROOT_PATH:="/"}

set -ex

export HOME=/config
exec thunar "$ROOT_PATH"
