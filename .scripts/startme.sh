#!/usr/bin/env bash

export LC_ALL="en_US.UTF-8"

cd /home/ubuntu/app && sh .scripts/env.sh
elixir --detached -S mix phx.server