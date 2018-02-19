#!/usr/bin/env bash

cd /home/ubuntu/app
sh .scripts/env.sh; elixir --detached -S mix phx.server