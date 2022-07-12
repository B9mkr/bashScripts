#! /bin/bash

# Example:
# ./.sh

tes="/tmp/countNumberOfWords.$$"
xclip -selection clipboard -o > $tes

echo "Word count: $(wc -w $tes | awk '{print $1}')."

rm -f $tes

