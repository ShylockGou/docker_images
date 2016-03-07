#!/bin/bash

#根证书 密钥
openssl genrsa -des3 -out root.key 2048
#根证书 申请文件
openssl req -config input.conf -new -key root.key -out root.csr

#自签名
openssl x509 -req -days 365 -sha1 -extensions v3_ca \
    -signkey root.key -in root.csr -out root.crt

#服务器证书 密钥
openssl genrsa -des3 -out server.key 2048
#openssl rsa -in server.key -out server.key

#服务器证书 申请文件
openssl req -config input.conf -new -key server.key -out server.csr

#自签名
openssl x509 -req -days 360 -sha1 -extensions v3_req \
    -CA root.crt -CAkey root.key -CAserial root.crt \
    -CAcreateserial -in server.csr -out server.crt

#客户端证书 密钥
openssl genrsa -des3 -out client.key 2048

#客户端证书 申请文件
openssl req -config input.conf -new -key client.key -out client.csr

#自签名
openssl x509 -req -days 360 -sha1 -extensions v3_req \
    -CA root.crt -CAkey root.key -CAserial root.crt \
    -CAcreateserial -in client.csr -out client.crt

#打包安装文件
openssl pkcs12 -export -in client.crt -inkey client.key -out client.pfx 





