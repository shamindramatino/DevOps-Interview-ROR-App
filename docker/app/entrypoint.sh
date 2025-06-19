#!/bin/sh
set -e

echo "Bundle install"
bundle check || bundle install

echo "Running migrations"
bundle exec rails db:migrate

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

exec "$@"
