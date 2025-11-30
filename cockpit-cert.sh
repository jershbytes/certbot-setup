#!/usr/bin/env bash

set -e

read -rp "Please Enter FQDN: " FQDN

cp /etc/letsencrypt/live/$FQDN/fullchain.pem /etc/cockpit/ws-certs.d/$FQDN.crt
cp /etc/letsencrypt/live/$FQDN/privkey.pem /etc/cockpit/ws-certs.d/$FQDN.key

echo "Restarting Cockpit"
systemctl restart cockpit

echo "SSL certificates renewed"
