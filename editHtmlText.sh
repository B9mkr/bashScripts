#! /bin/bash

. /home/bm/Documents/bashScripts/oneScripts/attachedFiles.sh

green="\e[1;32m"
yellow="\e[1;33m"
end="\e[0m"

tes="/tmp/tmpForHtmlToText"
xclip -selection clipboard -o > $tes

echo -e "\t${yellow}Start editing${end}"

isOneRow "$tes"
htmlToText "$tes"
wordCount="$(countWordsUrl "$tes")"

xclip -selection clipboard $tes

echo -e "\t${green}Finish editing${end} html in text (words: $wordCount) and copy to clipboard"

headFile=`head -n 1 $tes`
tailFile=`tail -n 1 $tes`

rm -f $tes

echo -e "Result: \"$headFile ..\t>\t.. $tailFile\""

