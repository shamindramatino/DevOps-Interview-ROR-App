#!/bin/sh
set -e

echo "Bundle install"
bundle check || bundle install

echo "Running migrations"
bundle exec rails db:migrate

rm -f tmp/pids/server.pid

exec "$@"
