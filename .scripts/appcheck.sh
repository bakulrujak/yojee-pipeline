#!/usr/bin/env bash

if [ $(netstat -tlpn | grep 8080 | wc -l) != 1 ]; then exit 1; else exit 0; fi