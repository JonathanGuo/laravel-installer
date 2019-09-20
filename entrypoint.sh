#!/usr/bin/env bash
isCommand() {
  for cmd in \
    "help" \
    "list" \
    "new"
  do
    if [ -z "${cmd#"$1"}" ]; then
      return 0
    fi
  done

  return 1
}

# check if the first argument passed in matches a known command
if isCommand "$1"; then
  set -- /sbin/tini -- $COMPOSER_HOME/vendor/bin/laravel "$@"
fi

exec "$@"