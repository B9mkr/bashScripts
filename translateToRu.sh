#! /bin/bash

green="\e[1;32m"
yellow="\e[1;33m"
end="\e[0m"

cd /tmp

tes="/tmp/tmpCurrentText"
tra="/tmp/tmpFinalText"

xclip -selection clipboard -o > $tes

echo -e "\t${yellow}Start translating${end} text to russian"

time trans :ru file://$tes > $tra

xclip -selection clipboard $tra

echo -e "\t${green}Finish translating${end} text to russian and copyed to clipboard"

headFile=`head -n 1 $tra`
tailFile=`tail -n 1 $tra`

echo "Result: \"$headFile .. | .. $tailFile\""

