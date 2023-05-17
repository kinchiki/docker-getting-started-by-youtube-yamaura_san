#!/bin/sh

[ "${RAILS_ENV}" = "production" ] && bundle exec rails assets:precompile

bundle exec rails s -p ${PORT:-3000} -b 0.0.0.0.
