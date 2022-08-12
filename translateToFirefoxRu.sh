#!/bin/bash

. /home/bm/Documents/bashScripts/oneScripts/attachedFiles.sh

bblue="\e[0;34m"
bcyan="\e[0;36m"
red="\e[0;31m"
green="\e[0;32m"
yellow="\e[0;33m"
end="\e[0m"

cd /tmp

urlCurentChapter="/tmp/curentChapter"

if [ "$1" = "" ]
then
  if [ -e $urlCurentChapter ]
  then
    curentChapter=`cat $urlCurentChapter`
    let curentChapter+=1
    echo "$curentChapter" > $urlCurentChapter 
  else
    read -p "Please enter current chaper: " curentChapter
    echo "$curentChapter" > $urlCurentChapter 
  fi
else
  curentChapter=$1
  echo "$curentChapter" > $urlCurentChapter 
fi

echo -e "${bcyan}$curentChapter${end} Current Chapter. $(date)"
tes="/tmp/tmpCurrentText_$curentChapter"
tes+="_$$"

xclip -selection clipboard -o > $tes

# html to text
htmlToText "$tes"

sed -i '/if/d' $tes
sed -i '/ins/d' $tes
sed -i '/tooltip/d' $tes
sed -i '/medrectangle/d' $tes
sed -i '/eval/d' $tes

sed -i '/^$/d' $tes

englishWordCount=$(countWordsUrl "$tes")

language="ru"
# language="pl"
tra="/tmp/tmpFinalText"
echo -e "${yellow}Start translating${end} text to $language"
time trans :"$language" file://$tes > $tra
echo -e "${green}Finish translating${end} text to $language"

translaltedWordCount=$(countWordsUrl "$tra")

if [ $translaltedWordCount -lt $englishWordCount ]
then
  difference="${red}$(( $englishWordCount - $translaltedWordCount ))${end}"
else
  difference="${green}$(( $translaltedWordCount - $englishWordCount ))${end}"
fi

echo -e "${bblue}$englishWordCount${end} > ${bblue}$translaltedWordCount${end} ($difference) Word count."

cat $tra > $tes
rm -f $tra

# echo -e "\t${yellow}Start editing${end}"
sed -i '/^$/d' $tes

# echo "removed empty lines"

sed -i 's/^/<p>/' $tes
sed -i 's/$/<\/p>/' $tes
# echo "add <p> tag for every lines"

sed -i 's/​//g' $tes
sed -i 's/u200b//g' $tes
# sed -i 's/^[[:space:]]*//g' $tes

sed -i 's/-\ /—\ /g' $tes
sed -i 's/-—/—/g' $tes
# echo "editing - to —"

sed -i 's/<hr class="wp-block-separator">/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>u003du003d<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>__________<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>———————————————————————<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>--------------------------------------------------------<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>◆<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>◆◆<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>◆ ◆<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>◆◆◆<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>◆ ◆ ◆<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>◇<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>◇◇<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>◇ ◇<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>◇◇◇<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>◇ ◇ ◇<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>・<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>・・<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>・・・<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>・・・&nbsp;<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>× × ×<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\*\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\*\*\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\*\*\*\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\* \* \*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p><strong>\*\*\*<\/strong><\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\*&nbsp;\*&nbsp;\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\*&nbsp;&nbsp;\*&nbsp;&nbsp;\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes

sed -i 's/\.\.\./…/g' $tes
sed -i 's/…\.\./…/g' $tes
sed -i 's/… \.\./…/g' $tes
sed -i 's/\.\.…/…/g' $tes
sed -i 's/…\./…/g' $tes
sed -i 's/\.…/…/g' $tes

# ---

sed -i 's/ </</g' $tes
sed -i 's/> />/g' $tes

sed -i 's/â € ™/"/g' $tes

sed -i '/<p> <\/p>/d' $tes
sed -i '/<p><\/p>/d' $tes
# sed -i '/<p>+<\/p>/d' $tes

# xclip -selection clipboard $tes

# echo -e "\t${green}Finish editing${end} text in html"

echo -n "<?xml version='1.0' encoding='utf-8'?>
<html xmlns=\"http://www.w3.org/1999/xhtml\">
<head>
 <link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\"/>
 <title>$curentChapter</title>
</head>
<body>
  <h2>$curentChapter | $englishWordCount > $translaltedWordCount Words count</h2>
  $(cat $tes)
</body>
</html>" > "$tes.html"

rm -f $tes

firefox "$tes.html"

