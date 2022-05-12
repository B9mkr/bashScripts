#! /bin/bash

word=$1
#file="~/Documents/czystyKod/dict.md"
file="/home/bm/Documents/czystyKod/dict.md"

trans pl:ru+en "$word"

da=`date`
echo "\n---- $da ----\n" >> $file

echo "\nru\n" >> $file
trans -show-original no -show-original-phonetics no -show-translation no -show-translation-phonetics no -show-prompt-message no -show-languages no -show-dictionary no -show-alternatives yes pl:ru "$word" >> $file

echo "\nen\n" >> $file
trans -show-original no -show-original-phonetics no -show-translation no -show-translation-phonetics no -show-prompt-message no -show-languages no -show-dictionary no -show-alternatives yes pl:en "$word" >> $file

