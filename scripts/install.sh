#!/bin/bash
set -euo pipefail

APP_DIR="/var/www/myapp"          # where CodeDeploy drops the dist/ contents
WEB_ROOT="/var/www/html"    # directory nginx's `root` points to

echo "==> Publishing build to web root"
mkdir -p "$WEB_ROOT"
rm -rf "${WEB_ROOT:?}"/*
cp -r "$APP_DIR"/* "$WEB_ROOT"/

echo "==> Fixing permissions"
chown -R www-data:www-data "$WEB_ROOT"
find "$WEB_ROOT" -type d -exec chmod 755 {} \;
find "$WEB_ROOT" -type f -exec chmod 644 {} \;

echo "==> install.sh complete"