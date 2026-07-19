#!/bin/bash
set -euo pipefail

if systemctl is-active --quiet nginx; then
  echo "==> Stopping nginx"
  systemctl stop nginx
else
  echo "==> nginx is not running, nothing to stop"
fi

exit 0