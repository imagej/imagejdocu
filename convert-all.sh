#!/bin/sh
git ls-files \*.docu | while read file
do
  echo "--> Converting $file"
  ./convert.sh "$file" || break
done
