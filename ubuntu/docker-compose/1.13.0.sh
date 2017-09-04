#!/bin/bash

curl -sL https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` -o /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose

