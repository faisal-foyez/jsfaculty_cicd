#!/bin/bash
set -euo pipefail

echo "==> Testing nginx configuration"
nginx -t

echo "==> Starting/reloading nginx"
if systemctl is-active --quiet nginx; then
  systemctl reload nginx
else
  systemctl start nginx
fi

systemctl enable nginx

echo "==> start.sh complete"