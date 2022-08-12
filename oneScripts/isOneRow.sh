#!/bin/bash

function isOneRow {
  local url="$1"
  if [ "$(head -n 1 $url)" = "$(tail -n 1 $url)" ]
  then
    return "0"
  else
    return "1"
  fi
}

