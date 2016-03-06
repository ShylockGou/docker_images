#!/bin/bash

docker run --name dns -d -p 53:53/udp -p 53:53/tcp -v /root/Workspaces/docker/unbound/unbound:/etc/unbound dns
docker run --name dns -d -v /home/shylock/Workspaces/docker/unbound/unbound:/etc/unbound dns
