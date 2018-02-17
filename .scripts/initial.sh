#!/usr/bin/env bash

export LC_ALL="en_US.UTF-8"
cd assets && npm install
Mix=dev mix ecto.migrate

exit 0