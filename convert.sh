#!/bin/sh

set -e

error() {
  echo "[ERROR] $1" 2>&1
}

die() {
  error "$1"
  exit $2
}

convert() {
  if [ ! -f "$1" ]
  then
    error "No such page: $1"
    return
  fi
  # Do a first-pass conversion using pandoc.
  pandoc -f dokuwiki -t markdown "$1" > "${1%.docu}.md" || die "Failed to convert '$1'" 2
}

for page in "$@"
do
  convert "$page"
done
