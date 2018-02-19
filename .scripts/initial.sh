#!/usr/bin/env bash

cd /home/ubuntu/app

mix local.rebar --force
mix local.hex --force
mix deps.get

source .scripts/env.sh; mix ecto.migrate > /tmp/migrate.txt

cd assets && npm install >> /tmp/migrate.txt