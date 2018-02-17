#!/usr/bin/env bash

export LC_ALL="en_US.UTF-8"

sh .scripts/env.sh
mix local.rebar --force
mix local.hex --force
mix deps.get
cd assets && npm install
mix ecto.migrate

exit 0