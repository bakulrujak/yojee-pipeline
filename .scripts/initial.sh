#!/usr/bin/env bash

export LC_ALL="en_US.UTF-8"

sh .scripts/env.sh
mix local.rebar --force
mix local.hex --force
mix deps.get
mix ecto.migrate
cd assets && npm install

exit 0