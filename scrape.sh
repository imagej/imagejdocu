#!/bin/sh

error() {
  echo "[ERROR] $1" 2>&1
}

die() {
  error "$1"
  exit $2
}

scrape() {
  echo "== $1 =="
  dir=$(dirname "$1")
  mkdir -p "$dir"
  curl -fs "https://imagejdocu.list.lu/$1?do=source" | \
    grep -A99999 'id="wiki__text"' | grep -B99999 '<\/textarea>' | \
    grep -v '<textarea' | sed 's/<\/textarea>$//' > "$1.docu"
}

for page in "$@"
do
  scrape "$page"
done
