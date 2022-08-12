#! /bin/bash
. /home/bm/Documents/bashScripts/oneScripts/attachedFiles.sh

# generateToc patch/to/file/with/chapter/names

function generateArray {
  local url="$1"
  isOneRow "$url"
  if [ "$?" = "0" ]
  then
    tom="$(tail -n 1 $url)"
  else
    local i=0
    while IFS= read -r row; 
    do 
      tom[$i]="$row"
      let i+=1
    done < $url
  fi
}

function enterChapterNames {
  local urlChapterNames="$1"
  local j=0
  if [ -f "$urlChapterNames" ]
  then
    generateArray "$urlChapterNames"
    echo "Array of chapters names[${#allChapters[@]}]: ${allChapters[@]}"
    echo "--------------------------------------------------------------"
    allIsRight
    if [ "$?" != "0" ]
    then
      while [ "$j" = "0" ]
      do
        vim $urlChapterNames
        generateArray "$urlChapterNames"
        echo "Array of chapters names[${#allChapters[@]}]: ${allChapters[@]}"
        echo "--------------------------------------------------------------"
        allIsRight
        if [ "$?" = "0" ]
        then
          j=1
        fi
      done
    fi
  else
    while [ "$j" = "0" ]
    do
      vim $urlChapterNames
      generateArray "$urlChapterNames"
      echo "Array of chapters names[${#allChapters[@]}]: ${allChapters[@]}"
      echo "--------------------------------------------------------------"
      allIsRight
      if [ "$?" = "0" ]
      then
        j=1
      fi
    done
  fi
}

function generateTocNames {
  local j=0
  local i=$1
  local n=$(( $2 + 1 ))
  local sumfiles=$(( $n - $i ));

  local tocUrl="$3"
  
  while [ $i -lt $n ]
  do
    name="$(generateName $i $n)"
    # echo -e "file \"$name\" ; Глава $i. ${tom[$j]} ; ${green}Created ${end}"
    echo "    <navPoint id=\"num_$(($j+1))\" playOrder=\"$(($j+1))\">
        <navLabel>
          <text>Глава $i. ${tom[$j]}</text>
        </navLabel>
        <content src=\"$name\"/>
    </navPoint>" >> $tocUrl
    i=$(( $i + 1 ))
    j=$(( $j + 1 ))
  done
  generateTocAdd $j "$tocUrl"
}

function generateTocAdd {
  local j=$1
  local tocUrl="$2"
  let j+=1
  echo "    <navPoint id=\"num_$j\" playOrder=\"$j\">
      <navLabel>
        <text>QR код для скачивания книги</text>
      </navLabel>
      <content src=\"download.xhtml\"/>
    </navPoint>" >> $tocUrl
  let j+=1
  echo "    <navPoint id=\"num_$j\" playOrder=\"$j\">
      <navLabel>
        <text>Примечания</text>
      </navLabel>
      <content src=\"footnotes.xhtml\"/>
    </navPoint>" >> $tocUrl
}

function generateTocWithoutNames {
  local j=0
  local i=$1
  local n=$(( $2 + 1 ))
  local sumfiles=$(( $n - $i ));

  local tocUrl="$3"
  
  while [ $i -lt $n ]
  do
    name="$(generateName $i $n)"
    echo "    <navPoint id=\"num_$(($j+1))\" playOrder=\"$(($j+1))\">
        <navLabel>
          <text>Глава $i</text>
        </navLabel>
        <content src=\"$name\"/>
    </navPoint>" >> $tocUrl
    i=$(( $i + 1 ))
    j=$(( $j + 1 ))
  done
  generateTocAdd $j "$tocUrl"
}

# echo "--- the end functions ----------------------------------------"

enteredUrl="toc$$"
toc="toc"
echo -n "" > $toc


if [ ! "$1" ]
then
  read -p "Is chapter Names? (Y / N): " answerIsChapterNames
else
  enteredUrl="$1"
  answerIsChapterNames="yNotToDeletedNames"
fi

read -p "Please enter first chapter (0 / 1 / ..): " answerFirstChapter
i=$answerFirstChapter
  
if [ "$answerIsChapterNames" = "y" ] || [ "$answerIsChapterNames" = "Y" ] || [ "$answerIsChapterNames" = "yNotToDeletedNames" ]
then
  if [ "$answerIsChapterNames" != "yNotToDeletedNames" ]
  then
    enterChapterNames "$enteredUrl"
  fi
  generateArray "$enteredUrl"

  n=`wc -l $enteredUrl | awk '{print $1}'`

  generateTocNames $i $n "$toc"
else
  read -p "Please enter last chapter (10 / ..): " answerLastChapter
  n=$answerLastChapter
  generateTocWithoutNames $i $n "$toc"

  if [ -e $enteredUrl ]
  then
    rm -f $enteredUrl
  fi
fi

green="\e[1;32m"
end="\e[0m"

echo -e "File \"toc\" ${green} created ${end}"

