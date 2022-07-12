#!/bin/bash

choisedFile="$1"

function veref {
  local thisUrl="$1"
  # local thisUrl=`cat $url`
  echo "Verification md5: $(md5sum "$thisUrl")"
  echo "Verification sha1: $(sha1sum "$thisUrl")"
  echo "Verification sha256: $(sha256sum "$thisUrl")"
}

function dialogFSelect {
  local url="$1"
  local file="$2"
  local pwd="$PWD"

  if [ "$file" = "" ]
  then
    local title="Verify"
    local backtitle="Choise File to verification"
    dialog --title "$title" \
      --backtitle "$backtitle" \
      --fselect "$pwd" 7 60 2> $url
    if [ "$?" = "0" ]
    then
      local thisUrl=`cat $url`
      veref "$thisUrl"
    else
      echo "File don't be choised!"
    fi
  else
    veref "$pwd/$file"
  fi
}

urlVerification="/tmp/verificationResult"
dialogFSelect "$urlVerification" "$choisedFile"

