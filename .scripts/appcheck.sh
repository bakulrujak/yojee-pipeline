#!/usr/bin/env bash

sleep 10
if [ $(netstat -tlpn | grep 8080 | wc -l) != 1 ]; then exit 1; else exit 0; fi