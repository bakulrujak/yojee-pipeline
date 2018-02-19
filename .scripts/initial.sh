#!/usr/bin/env bash

cd /home/ubuntu/app

mix local.rebar --force
mix local.hex --force
mix deps.get

sh .scripts/env.sh; mix ecto.migrate

cd assets && npm install