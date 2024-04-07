#!/bin/bash
if [ $# -ne 2 ]; then
    echo 'parameters are not specified'
    exit 1
fi


dirpath=$(dirname $1)

if [ ! -d "$dirpath" ]; then
  if ! mkdir -p "$dirpath"; then
    echo "Error: Failed to create directory: $dirpath"
    exit 1
  fi
fi

if ! echo "$2" > "$1"; then
  echo "Error: Failed to create or write to file: $1"
  exit 1
fi