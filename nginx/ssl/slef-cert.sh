#!/bin/bash

openssl req -config input.conf -new -x509 -sha256 -newkey rsa:2048 -nodes \
        -keyout example.key.pem -days 365 -out example.cert.pem

openssl req -config input.conf -new -sha256 -newkey rsa:2048 -nodes \
        -keyout example.key -days 365 -out example.crt
