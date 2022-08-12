#!/bin/bash

. /home/bm/Documents/bashScripts/oneScripts/attachedFiles.sh

bblue="\e[0;34m"
bcyan="\e[0;36m"
red="\e[0;31m"
green="\e[0;32m"
yellow="\e[0;33m"
end="\e[0m"

pwd="$PWD"
# cd /tmp
urlCurentChapter="/tmp/lastChapter"
curentChapter=1
lastChapter=120
directoryResult=""

function emptyFirst {
  directoryResult="$pwd"
  curentChapter="$(emptySecond "$directoryResult")"
  lastChapter=$curentChapter
  echo "directoryResult: $directoryResult"
  echo "lastChapter: $lastChapter"
}

function emptySecond {
  local urlCurentChapter="$1/lastChapter"
  # echo "urlCurentChapter: $urlCurentChapter"
  if [ -e "$urlCurentChapter" ]
  then
    # echo -n "isFile ; "
    curentChapter=`cat $urlCurentChapter`
    # echo -n "curentChapter: $curentChapter ; "
    # echo -n "curentChapter += 1 ; "
    let curentChapter+=1
    # echo -n "curentChapter: $curentChapter ; "
    echo -n "$curentChapter" > "$urlCurentChapter"
    # echo "cat urlCurentChapter: $(cat $urlCurentChapter)"
  else
    # echo -n "notFile"
    # echo "curentChapter = Enter"
    read -p "Please enter current chaper: " curentChapter
    # echo "Create File"
    # echo -n "curentChapter: $curentChapter ; "
    echo -n "$curentChapter" > $urlCurentChapter 
    # echo "cat urlCurentChapter: $(cat $urlCurentChapter)"
  fi
  # echo "curentChapter: $curentChapter"
  # echo -e "end enptySecond!!\n\n"
  echo -n "$curentChapter"
}

function generateArray {
  local url="$1"
  isOneRow "$url"
  if [ "$?" = "0" ]
  then
    allChapters="$(tail -n 1 $url)"
    # echo "Chapter name: $allChapters"
  else
    local i=0
    while IFS= read -r row; 
    do 
      allChapters[$i]="$row"
      let i+=1
    done < $url
  fi
}

function showArray {
  local i=0
  while [ $i -lt ${#allChapters[@]} ]
  do
    echo "[$i]: ${allChapters[$i]}"
    let i+=1
  done
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
  local numberIn=$1
  local numberIn2=$2
  local t="$(numberOfZeros $numberIn2)"
  local t2="$(numberOfZeros $numberIn)"
  local zero="$(stringZero $(( $t - $t2 )))"
  echo "ch${zero}$numberIn.html"
}

function allIsRight {
  read -p "All is right? (Y/N)" response
  if [ $response = "y" ] || [ $response = "Y" ]
  then
    return 0
  fi
  return 1
}

function edit {
  local tes="$1"
  
  textInOneRow "$tes"
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
}

  # <h2>Глава $curentChapter. ${allChapters[$[curentChapter-1]]}</h2>
function createFile {
  local contentUrl="$1"
  local finishUrl="$2"
  fileNameResult="$(generateName "$curentChapter" "$lastChapter")"
  
  echo -n "<?xml version='1.0' encoding='utf-8'?>
<html xmlns=\"http://www.w3.org/1999/xhtml\">
<head>
<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\"/>
<title>$curentChapter / $lastChapter | $wordCount</title>
</head>
<body>
  <h2>${allChapters[$[curentChapter-1]]}</h2>
$(cat $contentUrl)
</body>
</html>" > "$finishUrl/$fileNameResult"
}

function enterChapterNames {
  local urlChapterNames="$1"
  local j=0
  if [ -f "$urlChapterNames" ]
  then
    generateArray "$urlChapterNames"

    # echo "Array of chapters names[${#allChapters[@]}]: ${allChapters[0]} -> ${allChapters[$[${#allChapters[@]}-1]]}"
    # # echo "--------------------------------------------------------------"
    # allIsRight
    # if [ "$?" != "0" ]
    # then
    #   while [ "$j" = "0" ]
    #   do
    #     vim $urlChapterNames
    #     generateArray "$urlChapterNames"
    #     echo "Array of chapters names[${#allChapters[@]}]: ${allChapters[0]} -> ${allChapters[$[${#allChapters[@]}-1]]}"
    #     # echo "--------------------------------------------------------------"
    #     allIsRight
    #     if [ "$?" = "0" ]
    #     then
    #       j=1
    #     fi
    #   done
    # fi

  else
    while [ "$j" = "0" ]
    do
      vim $urlChapterNames
      generateArray "$urlChapterNames"
      echo "Array of chapters names[${#allChapters[@]}]: ${allChapters[0]} -> ${allChapters[$[${#allChapters[@]}-1]]}"
      # echo "Array of chapters names[${#allChapters[@]}]: ${allChapters[@]}"
      # echo "--------------------------------------------------------------"
      allIsRight
      if [ "$?" = "0" ]
      then
        j=1
      fi
    done
  fi
  lastChapter=`wc -l $urlChapterNames | awk '{print $1}'`
}

# echo "--- the end functions ----------------------------------------"

if [ ! "$1" ]
then
  emptyFirst
else
  directoryResult="$1"
  isDirectory "$directoryResult"
  if [ ! "$2" ]
  then
    curentChapter="$(emptySecond "$directoryResult")"
  else
    curentChapter="$2"
    echo -n "$curentChapter" > "$directoryResult/lastChapter"
  fi
  lastChapter="$curentChapter"
fi

resultUrl="$directoryResult"
isDirectory "$resultUrl"

urlChapterNames="$resultUrl/allChapterNames"
enterChapterNames "$urlChapterNames"

# read -p "Did you copy chapter: $curentChapter. ${allChapters[$[curentChapter-1]]}? " yes
tes="/tmp/tmpCurrentChapterText_$curentChapter\_$$"
xclip -selection clipboard -o > "$tes"

wordCount="$(countWordsUrl "$tes")"

echo -ne "${bcyan}$curentChapter${end}. ${allChapters[$[curentChapter-1]]}. "

edit "$tes"
createFile "$tes" "$resultUrl"

rm -f $tes

echo -e "${green}Finish${end} (${bblue}$wordCount${end}) generating file \"$resultUrl/$fileNameResult\" | $(date)"

# echo "--------------------------------------------------------------"

csvResult="\"$curentChapter\" , \"$wordCount\" , \"$(date +%d.%m.%Y\ %H:%M:%S)\""
csvResultUrl="${resultUrl}/result.csv"
contentToUrl "$csvResult" "$csvResultUrl" 

