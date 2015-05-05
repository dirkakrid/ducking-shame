#!/bin/env bash

openssl genrsa -des3 -out server.key 4096
echo "common name - ip or official domain name"
openssl req -new -key server.key -out server.csr
#remove the password because nginx systemd service file cant handle it on start up...
cp server.key server.key.org
openssl rsa -in server.key.org -out server.key
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
