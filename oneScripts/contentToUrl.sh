#!/bin/bash

function contentToUrl {
  local content="$1"
  local url="$2"
  if [ -e "$url" ]
  then
    echo "$content" >> "$url"
  else
    echo "$content" > "$url"
  fi
}

