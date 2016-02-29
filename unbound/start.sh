#!/bin/bash

docker run --name dns -d -v /home/shylock/Workspaces/docker/unbound/unbound:/etc/unbound dns
