#!/bin/bash

openssl req -config example.conf -new -x509 -sha256 -newkey rsa:2048 -nodes \
        -keyout example.key.pem -days 365 -out example.cert.pem

openssl req -config example.conf -new -sha256 -newkey rsa:2048 -nodes \
        -keyout example.key -days 365 -out example.crt
