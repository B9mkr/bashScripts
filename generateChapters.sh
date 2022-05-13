#! /bin/bash

# Example:
#
# ./generateChapters.sh directoryName 1 30
#
# Created in the folder chapters from 1 to 30 templates

thisDirectory=`pwd`
cd $thisDirectory

green="\e[1;32m"
end="\e[0m"
toc="toc"
startI=1
endN=10
j=0

if [ ! "$1" ] ; then
  dataNow=`date +%Y%m%d%H%M%S`
  directory="book_$dataNow"
  i=$startI
  n=$endN
else
  directory=$1

  if [ ! "$2" ] ; then
    i=$startI
    n=$endN

  else

    if [ ! "$3" ] ; then
      i=$startI
      n=$3
    else
      i=$2
      n=$3
    fi

  fi

fi

mkdir -p $directory
echo "Created in directory: $directory"

cd $directory
echo "" > $toc

n=$(( $n + 1 ));
sumfiles=$(( $n - $i ));

while [ $i -lt $n ]
do

  if [ $n -lt 10 ]; then
    name="ch$i.html"
  elif [ $n -lt 100 ]; then
    if [ $i -lt 10 ]; then
      name="ch0$i.html"
    else
      name="ch$i.html"
    fi
  else
    if [ $i -lt 10 ]; then
      name="ch00$i.html"
    elif [ $i -lt 100 ]; then
      name="ch0$i.html"
    else
      name="ch$i.html"
    fi
  fi

  echo -e "file \"$name\" ${green} created ${end}"
  touch $name

    echo "<?xml version='1.0' encoding='utf-8'?>
<html xmlns=\"http://www.w3.org/1999/xhtml\">
<head>
  <link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\"/>
  <title>Глава $i</title>
</head>
<body>
  <h2>Глава $i</h2>



</body>
</html>" > $name
   
    echo "    <navPoint id=\"num_$(($j+1))\" playOrder=\"$(($j+1))\">
      <navLabel>
        <text>Глава $i</text>
      </navLabel>
      <content src=\"$name\"/>
    </navPoint>" >> $toc

  i=$(( $i + 1 ))
  j=$(( $j + 1 ))
done

echo "    <navPoint id=\"num_$(($j+1))\" playOrder=\"$(($j+1))\">
      <navLabel>
        <text>QR код для скачивания книги</text>
      </navLabel>
      <content src=\"info.html#toc_1\"/>
    </navPoint>" >> $toc

echo -e "files $sumfiles ${green} created ${end}"
echo -e "file \"toc\" ${green} created ${end}"

