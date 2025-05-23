#!/bin/sh

set -eu

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root."
    exit 1
fi

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
set -x

install --target-directory /etc/systemd/system --mode 644 "$SCRIPT_DIR/journal-vsock-sink.service"

systemctl enable --now journal-vsock-sink.service
