#! /bin/bash

. /home/bm/Documents/bashScripts/oneScripts/attachedFiles.sh

# Example:
# ./.sh

tes="/tmp/countNumberOfWords.$$"
xclip -selection clipboard -o > $tes

echo "Word count: $(countWordsUrl "$tes")."

rm -f $tes

