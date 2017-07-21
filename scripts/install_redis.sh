#!/bin/bash

echo "Installing PostgreSQL"

sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -q -y postgresql-common
sudo apt-get install -q -y postgresql-9.5 libpq-dev

echo "Installing Redis"

sudo apt-get install -q -y redis-server
