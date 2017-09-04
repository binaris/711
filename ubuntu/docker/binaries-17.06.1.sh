#!/bin/bash

curl -sL -o /docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-17.06.1-ce.tgz
tar xf /docker.tgz
chmod +x /docker/*
mv /docker/* /usr/sbin/
rm /docker.tgz

