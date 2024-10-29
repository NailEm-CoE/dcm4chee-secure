#!/bin/sh

# Substitute environment variables in the NGINX config template and save to final config location# Substitute environment variables in the NGINX config template and save to final config location
envsubst '$$SERVER_NAME $$ARC $$KEYCLOAK' < /etc/nginx/conf.d/server.conf.template > /etc/nginx/conf.d/default.conf

# Start NGINX
nginx -g 'daemon off;'