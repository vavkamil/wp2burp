#!/usr/bin/env sh

# Install WordPress
wp core install \
  --title="Just another WordPress site" \
  --admin_user="admin" \
  --admin_password="admin" \
  --admin_email="admin@example.com" \
  --url="http://127.0.0.1:31337/" \
  --skip-email

# FS_METHOD forces the filesystem method for installing plugins
wp config set FS_METHOD direct