#!/bin/bash

function isDirectory {
  local resultUrl="$1"
  if [ ! -d "$resultUrl" ]
  then
    mkdir -p $resultUrl
  fi
}

