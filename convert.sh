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
  # Do a first-pass conversion using the mediasyntax script.
  php dokuwiki2mediawiki.php "$1"
  dest="${1%.docu}.wiki"
  mv "$1.mod" "$dest"
  # Fix HTML escape sequences.
  sed -i '' -e 's/&lt;/</g' "$dest"
  sed -i '' -e 's/&gt;/>/g' "$dest"
  sed -i '' -e 's/&quot;/"/g' "$dest"
  # Fix mangled hyperlinks.
  sed -i '' -e "s_\http:''_http://_g" "$dest"
  sed -i '' -e "s_\https:''_https://_g" "$dest"
  # Fix missing mailto: prefixes.
  sed -i '' -e 's/\[\[\([^]| ]*\@[^]|]*\)|\([^]]*\)\]\]/\[mailto:\1 \2\]/g' "$dest"
  # Fix bullet markup.
  sed -i '' -e "s/^''' /* /" "$dest"
}

test -f dokuwiki2mediawiki.php || curl -fsLO https://raw.githubusercontent.com/tstaerk/mediasyntax/master/tools/dokuwiki2mediawiki.php
test -f dokuwiki2mediawiki.php || die "Could not download wiki format conversion script" 1

for page in "$@"
do
  convert "$page"
done
