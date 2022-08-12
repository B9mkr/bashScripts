#!/bin/bash

# . /home/bm/Documents/bashScripts/oneScripts/attachedFiles.sh

function htmlToText {
  local tes="$1"
  # textInOneRow "$tes"
  sed -i 's/</\n</g' $tes
  sed -i 's/>/>\n/g' $tes
  sed -i 's/  / /g' $tes
  sed -i 's/  / /g' $tes
  sed -i 's/  / /g' $tes
  sed -i 's/  / /g' $tes
  sed -i 's/  / /g' $tes
  sed -i 's/  / /g' $tes
  sed -i '/<*>/d' $tes
  sed -i '/^$/d' $tes
  sed -i '/^ $/d' $tes
}

