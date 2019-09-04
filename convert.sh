#!/bin/sh

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
  php dokuwiki2mediawiki.php "$1"
  dest="${1%.docu}.wiki"
  mv "$1.mod" "$dest"
}

test -f dokuwiki2mediawiki.php || curl -fsLO https://raw.githubusercontent.com/tstaerk/mediasyntax/master/tools/dokuwiki2mediawiki.php
test -f dokuwiki2mediawiki.php || die "Could not download wiki format conversion script" 1

for page in "$@"
do
  convert "$page"
done
