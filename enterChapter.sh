#!/bin/bash

# skryptName directory LastChapter TthisChapterT

bblue="\e[0;34m"
bcyan="\e[0;36m"
red="\e[0;31m"
green="\e[0;32m"
yellow="\e[0;33m"
end="\e[0m"

pwd="$PWD"
# cd /tmp
urlCurentChapter="/tmp/lastChapter"
lastChapter=470
directoryResult=""

function allTextInOneRow {
  local url="$1"
  if [ $(cat $url | wc -l) -gt 1 ]
  then
    local newUrl="/tmp/tempUrl$$"
    echo -n "" > $newUrl
    # echo "in allTextInOneRow | url: \"$url\" newUrl: \"$newUrl\""
    # echo -e "\n\tStart cat url"
    # cat $url
    local whileLastRow=""
    local lastRow=""
    while IFS= read -r row; 
    do 
      echo -n " $row" >> $newUrl
      whileLastRow="$row"
    done < $url
    lastRow="$(tail -n 1 $url)"
    if [ "$lastRow" != "$whileLastRow" ]
    then
      echo -n " $lastRow" >> $newUrl
    fi
    cat "$newUrl" > $url
    # echo -e "\n\tFinish cat url"
    # cat $url
    rm -f $newUrl
  fi
}

function numberOfZeros {
  local numberIn=$1
  local wynnik=1
  local z=1
  while [ $z -le $numberIn ];
  do
    z=$(( $z * 10 ))
    wynnik=$(( $wynnik + 1 ))
  done
  echo $(( $wynnik - 1 ))
}

function stringZero {
  local numberIn=$1
  local i=0
  local z=""
  while [ $i -lt $numberIn ];
  do
    z="${z}0"
    i=$(( $i + 1 ))
  done
  echo "$z"
}

function generateName {
  numberIn=$1
  numberIn2=$2
  t="$(numberOfZeros $numberIn2)"
  t2="$(numberOfZeros $numberIn)"
  zero="$(stringZero $(( $t - $t2 )))"
  echo "ch${zero}$numberIn.html"
}

function edit {
  local tes="$1"

  # echo -e "\t${yellow}Start editing${end}"
  
  allTextInOneRow "$tes"
  # sed -i '/^$/d' $tes
  # # echo "removed empty lines"

  # sed -i 's/^/<p>/' $tes
  # sed -i 's/$/<\/p>/' $tes
  # # echo "add <p> tag for every lines"

  sed -i 's/​//g' $tes

  sed -i 's/-\ /—\ /g' $tes
  # # echo "editing - to —"
  
  sed -i 's/<p/\n<p/g' $tes
  sed -i 's/<\/div>/\n<\/div>/g' $tes
  sed -i 's/<div/\n<div/g' $tes
  sed -i '/div/d' $tes
  sed -i '/^$/d' $tes
  
  sed -i 's/&nbsp; &nbsp; / /g' $tes
  
  sed -i 's/<hr class="wp-block-separator">/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
  sed -i 's/<p>-<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
  sed -i 's/<p>--<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
  sed -i 's/<p>---<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
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
  sed -i 's/<p>\*\*\*\*\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
  sed -i 's/<p>\*\*\*\*\*\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
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
  
  sed -i 's/ </</g' $tes
  sed -i 's/> />/g' $tes
  
  sed -i '/<p> <\/p>/d' $tes
  sed -i '/<p><\/p>/d' $tes
  # sed -i '/<p>+<\/p>/d' $tes
  # echo -e "\t${green}Finish editing${end} text in html"
}

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

function generateResult {
  local url="$1"
  local content="$2"
  if [ -e "$url" ]
  then
    echo "$content" >> "$url"
  else
    echo "$content" > "$url"
  fi
}

# echo "--------------------------------------------------------------"

# skrypt directory LastChapter TthisChapterT

if [ ! "$1" ]
then
  # echo "notEnterFirst"
  # echo "directory = This"
  directoryResult="$pwd"
  # echo "lastChapter = CurentChapter"
  lastChapter=$curentChapter
else
  # echo "enterFirst"
  directoryResult="$1"
  if [ ! -d "$directoryResult" ]
  then
    # echo "notDirectory"
    # echo "Create Directory"
    mkdir -p $directoryResult
  fi
  if [ ! "$2" ]
  then
    # echo "notEnterSecond"
    # echo "lastChapter = CurentChapter"
    lastChapter="$curentChapter"
  else
    # echo "enterSecond"
    # echo "lastChapter = Second"
    lastChapter="$2"
  fi
fi

urlCurentChapter="$directoryResult/lastChapter"

if [ ! "$3" ]
then
  if [ -e "$urlCurentChapter" ]
  then
    # echo "isFile"
    # echo "CurentChapter = File"
    curentChapter=`cat $urlCurentChapter`
    # echo "CurentChapter += 1"
    let curentChapter+=1
    # echo "File = CurentChapter"
    echo -n "$curentChapter" > $urlCurentChapter 
  else
    # echo "notFile"
    # echo "curentChapter = Enter"
    read -p "Please enter current chaper: " curentChapter
    # echo "Create File"
    echo -n "$curentChapter" > $urlCurentChapter 
  fi
else
  # echo "enterThird"
  # echo "CurentChapter = Third"
  curentChapter="$3"
  echo -n "$curentChapter" > $urlCurentChapter 
fi

tes="/tmp/tmpCurrentChapterText_$curentChapter"
tes+="_$$"

xclip -selection clipboard -o > $tes

wordCount="$(countWordsUrl "$tes")"

echo -ne "${bcyan}$curentChapter${end}. "
edit "$tes"

resultUrl="$directoryResult"
if [ ! -d "$resultUrl" ]
then
  mkdir -p $resultUrl
fi

fileNameResult="$(generateName "$curentChapter" "$lastChapter")"

echo -n "<?xml version='1.0' encoding='utf-8'?>
<html xmlns=\"http://www.w3.org/1999/xhtml\">
<head>
 <link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\"/>
 <title>$curentChapter | $wordCount</title>
</head>
<body>
  <h2>Глава $curentChapter</h2>
$(cat $tes)
</body>
</html>" > "$resultUrl/$fileNameResult"

rm -f $tes

echo -e "${green}Finish${end} (${bblue}$wordCount${end}) generating file \"$resultUrl/$fileNameResult\" | $(date)"

# csvResult="\"$curentChapter\" , \"$wordCount\" , \"$(date +%d.%m.%Y\ %H:%M:%S)\""
csvResult="$curentChapter ; $wordCount ; $(date +%d.%m.%Y\ %H:%M:%S)"
csvResultUrl="${resultUrl}/result.csv"
generateResult "$csvResultUrl" "$csvResult"

