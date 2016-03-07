#!/bin/bash

 docker run --name nginx -d -p 80:80 -p 443:443 \
     -v /root/Workspaces/docker/nginx/conf.d:/etc/nginx/conf.d\
     -v /root/Workspaces/docker/nginx/ssl:/etc/nginx/ssl\
     nginx
