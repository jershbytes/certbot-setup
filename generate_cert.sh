#!/usr/bin/env bash

set -e

read -rp "Please Enter FQDN: " FQDN

certbot certonly \
  --dns-cloudflare \
  --dns-cloudflare-credentials ~/.secrets/certbot/cloudflare.ini \
  --agree-tos \
  -n \
  -d $FQDN