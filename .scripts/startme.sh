#!/usr/bin/env bash

cd /home/ubuntu/app
source .scripts/env.sh; elixir --detached -S mix phx.server