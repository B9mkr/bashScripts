#! /bin/bash

green="\e[1;32m"
end="\e[0m"
file="/tmp/copiedTheDate"
date > $file
xclip -selection clipboard $file
echo -e "${green} Copied ${end} the date to the clipboard"
