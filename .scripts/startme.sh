#!/usr/bin/env bash

cd /home/ubuntu/app
. ./.scripts/env.sh; elixir --detached -S mix phx.server