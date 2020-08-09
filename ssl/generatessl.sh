#!/bin/bash -x
name=localhost
openssl req -new \
  -newkey rsa:2048 \
  -sha256 \
  -nodes \
  -x509 \
  -keyout $name.key \
  -out $name.crt \
  -config config \
  -subj= /C=xx/ST=xx/L=xx/O=xx/OU=xx/CN=xx