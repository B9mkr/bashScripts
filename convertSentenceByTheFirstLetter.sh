#!/bin/bash

green="\e[1;32m"
end="\e[0m"

url="/tmp/firstChapters"

xclip -selection clipboard -o > $url

startSentence=`cat $url`

sed -i 's/\ /\n/g' $url

chr() {
  [ "$1" -lt 256 ] || return 1
  printf "\\$(printf '%03o' "$1")"
}

ord() {
  LC_CTYPE=C printf '%d' "'$1"
}

function littleChapter {
  local chapter="$1"
  # if [ "$chapter" -ge "$(chr 65)" ] && [ "$chapter" -le "$(chr 90)" ] 
  if [ "$(ord $chapter)" -ge 65 ] && [ "$(ord $chapter)" -le 90 ] 
  then
    chapterInt=$(( $(ord $chapter) + 32 ))
    chapter=$(chr $chapterInt)
  elif [ "$(ord $chapter)" -ge 97 ] && [ "$(ord $chapter)" -le 122 ] 
  then
    chapter="$chapter"
  else
    chapter=""
  fi
  echo "$chapter"
  # return $chapter
}

# function testlittleChapter {
#   local thisC="$1"
#   echo "$thisC -> $(littleChapter $thisC)"
# }
# testlittleChapter "a"
# testlittleChapter "A"
# testlittleChapter "b"
# testlittleChapter "B"
# testlittleChapter ","
# testlittleChapter "3"
# testlittleChapter ""

result=""
while IFS= read -r line; 
do 
  chapter=${line:0:1}
  littleChapterFinish=$(littleChapter $chapter)
  result="$result$littleChapterFinish"
  # echo "$chapter -> $littleChapterFinish"
done < $url

echo "$result" > $url
xclip -selection clipboard $url

echo -e "\t${green}Finish editing${end} \"$startSentence\" -> \"$result\" and copy to clipboard"

