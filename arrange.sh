#!/bin/bash
cd "$(dirname "$0")"

for f in files/*; do
  [ -f "$f" ] || continue
  name=$(basename "$f")
  first=$(echo "${name:0:1}" | tr 'A-Z' 'a-z')
  mv "$f" "$first/"
done
