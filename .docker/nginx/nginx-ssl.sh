#!/bin/bash

if [ ! -f "/certs/$URL_DOMAIN-selfsigned.crt" ]
then
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=CA/ST=QC/O=Company, Inc./CN=$URL_DOMAIN" \
    -addext "subjectAltName=DNS:$URL_DOMAIN" \
    -keyout "/certs/$URL_DOMAIN-selfsigned.key" \
    -out "/certs/$URL_DOMAIN-selfsigned.crt"
fi

dockerize -template ./.docker/nginx/conf.d/examplehttps.conf:/etc/nginx/conf.d/examplehttps.conf

nginx -g 'daemon off;'
