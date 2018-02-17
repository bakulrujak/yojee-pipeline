#!/usr/bin/env bash

export LC_ALL="en_US.UTF-8"

cd /home/ubuntu/app
sh .scripts/env.sh
mix local.rebar --force
mix local.hex --force
mix deps.get
mix ecto.migrate > /tmp/migrate.txt
cd assets && npm install >> /tmp/migrate.txt