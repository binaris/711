#!/bin/bash

curl -sL -o /docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-17.12.0-ce.tgz
cd /
tar xf /docker.tgz
chmod +x /docker/*
mv /docker/* /usr/sbin/
rm /docker.tgz

