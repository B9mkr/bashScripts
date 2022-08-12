#!/bin/bash

function countWordsUrl {
  local url="$1"
  local tmpUrl="/tmp/countWordsUrl$$"
  cat "$url" > $tmpUrl

  sed -i 's/</\n</g' $tmpUrl
  sed -i 's/>/>\n/g' $tmpUrl
  sed -i 's/,/ /g' $tmpUrl
  sed -i 's/\./ /g' $tmpUrl
  sed -i 's/~/ /g' $tmpUrl
  sed -i 's/!/ /g' $tmpUrl
  sed -i 's/\?/ /g' $tmpUrl
  sed -i 's/\%/ /g' $tmpUrl
  sed -i 's/+/ /g' $tmpUrl
  sed -i 's/(/ /g' $tmpUrl
  sed -i 's/)/ /g' $tmpUrl
  sed -i 's/-/ /g' $tmpUrl
  sed -i 's/—/ /g' $tmpUrl
  sed -i 's/:/ /g' $tmpUrl
  sed -i 's/;/ /g' $tmpUrl
  sed -i 's/«/ /g' $tmpUrl
  sed -i 's/»/ /g' $tmpUrl
  sed -i 's/"/ /g' $tmpUrl
  sed -i "s/\'/ /g" $tmpUrl
  sed -i 's/&nbsp;/ /g' $tmpUrl
  sed -i 's/\*/ /g' $tmpUrl
  sed -i 's/…/ /g' $tmpUrl
  sed -i 's/  / /g' $tmpUrl
  sed -i 's/  / /g' $tmpUrl
  sed -i 's/  / /g' $tmpUrl
  sed -i '/<*>/d' $tmpUrl
  sed -i '/*http*/d' $tmpUrl
  sed -i '/*img*/d' $tmpUrl
  sed -i '/^$/d' $tmpUrl

  local wordCount=`wc -w $tmpUrl | awk '{print $1}'`
  rm -f $tmpUrl
  echo "$wordCount"
}

