#!/bin/bash

black="\e[1;30m"
red="\e[1;31m"
green="\e[1;32m"
yellow="\e[1;33m"
blue="\e[1;34m"
purple="\e[1;35m"
cyan="\e[1;36m"
white="\e[1;37m"
end="\e[0m"

# ----------------------------

#echo "my actual script"

#echo "installing for latex convert"
#sudo apt-get install texlive
#sudo apt install texinfo
#sudo apt-get install texlive-fonts-recommended
#sudo apt-get install texlive-fonts-extra
#sudo apt-get install texlive-latex-extra

#echo "removing for latex convert"
#sudo apt-get remove texlive -y
#sudo apt remove texinfo -y
#sudo apt-get remove texlive-fonts-recommended -y
#sudo apt-get remove texlive-fonts-extra -y
#sudo apt-get remove texlive-latex-extra -y

# ----------------------------

#wget -O- https://rss.nbp.pl/kursy/TabelaA.xml > /tmp/ta.xml

#cat /tmp/ta.xml | grep EUR
#sed -n -e '/EURO/p' /tmp/ta.xml

#cat /tmp/ta.xml | grep EUR

#grep ^EUR /tmp/ta.xml
#grep 'EUR' /tmp/ta.xml
#grep ^EUR /tmp/ta.xml

#grep '2021 z dnia' /tmp/ta.xml > /tmp/daty.xml
#sed 's/*2021\ z\ dnia//g' /tmp/daty.xml

# ----------------------------

#i=`ls /tmp/ta*`

#if [ $i -lt 0 ]
#then
  #echo "true"
#else  
  #echo "false"
#fi

#/home/bm/Documents/bashScripts/oneHScript.sh

# ----------------------------

#"INSERT INTO `User` (`id_user`, `username`, `email`, `creation_date`, `modification_date`, `id_img`, `id_status`, `passwd`) VALUES 
#(NULL, 'test', 'test@gmail.com', CURRENT_TIME(), CURRENT_TIME(), '1', '2', MD5('test'));"

#echo "Lamar Graham" | sed 's/\ /./g'
#echo "Lamar Graham" | sed 's/\ //g'
#echo "Lamar Graham" | sed 's/\ /_/g'

# ----------------------------

#xdg-open ~/7s/pwco/lab/4/Lab4_PwCh.pdf &
#libreoffice ~/7s/pwco/lab/4/CW4_pt_18_Mushka.odt &

#xdg-open ~/7s/pwco/lab/3/CW3_pt_18_Reminnyi.pdf &
#xdg-open ~/7s/pwco/lab/3/PwChO_lab3_ST.pdf &
#libreoffice ~/7s/pwco/lab/3/CW3_pt_18_Mushka.odt &

#sudo /etc/init.d/apache2 stop
#sudo /opt/lampp/xampp startapache

# ----------------------------

#translate
# word=$1

# echo "ru"
# trans -show-original no -show-original-phonetics no -show-translation no -show-translation-phonetics no -show-prompt-message no -show-languages no -show-dictionary no -show-alternatives yes en:ru "$word"

# echo "pl"
# trans -show-original no -show-original-phonetics no -show-translation no -show-translation-phonetics no -show-prompt-message no -show-languages no -show-dictionary no -show-alternatives yes en:pl "$word"

# ----------------------------

#openssl rand -base64 200 > /tmp/gt
#cat /tmp/gt
#sed '%s/\n/\ /g'
#cat /tmp/gt

#notify-send "$(cat /sys/class/power_supply/BAT0/capacity)%"

# ----------------------------

# procent
echo -e "a = b"
echo -e "x = c"
read -p "a: " a
read -p "b: " b
read -p "c: " c
# echo "$((($2*100)/$1))"
echo `bc <<< "scale = 5 ; ($c*$a)/$b"`
# 100 $1
# x $2
# x=($2*100)/$1

# ----------------------------

# cat /home/bm/Documents/base/Daily/2021* | grep Books > /home/bm/Desktop/books
# cat /home/bm/Documents/base/Daily/2021* | grep Anime > /home/bm/Desktop/anime
# cat /home/bm/Documents/base/Daily/2021* | grep Manga > /home/bm/Desktop/manga
# cat /home/bm/Documents/base/Daily/2021* | grep Ranobe > /home/bm/Desktop/ranobe
# cat /home/bm/Documents/base/Daily/2021* | grep 'chess.com' > /home/bm/Desktop/chess
# cat /home/bm/Documents/base/Daily/2021* | grep '10fastfingers' > /home/bm/Desktop/typing

# ----------------------------

# ftest="/home/bm/Desktop/test"
# fbook="/home/bm/Desktop/books"
# ftyping="/home/bm/Desktop/typing"
# fchess="/home/bm/Desktop/chess"
# fanime="/home/bm/Desktop/anime"
# fmanga="/home/bm/Desktop/manga"
# franobe="/home/bm/Desktop/ranobe"
# finish="/home/bm/Desktop/finish"

# data=`date +%H:%M:%S`
# echo "--- $data ---" >> $finish

# sum=0
# while IFS= read -r line; do
  # echo $line
  # sum=$(($sum+$line));
# done < $fbook
 # echo "sum books: $sum" >> $finish
 
# sum=0
# while IFS= read -r line; do
#   echo $line
#   sum=$(($sum+$line));
# done < $fanime
# echo "sum anime: $sum" >> $finish

# 
# sum=0
# while IFS= read -r line; do
  # echo $line
  # sum=$(($sum+$line));
# done < $fmanga
# echo "sum manga: $sum" >> $finish
# 
# sum=0
# while IFS= read -r line; do
  # echo $line
  # sum=$(($sum+$line));
# done < $franobe
# echo "sum ranobe: $sum" >> $finish

# sum=0
# i=0
# while IFS= read -r line; do
#   echo $line
#   sum=$(($sum+$line));
#   i=$(($i+1));
# done < $ftyping
# echo "average typing: `bc <<< "scale=4; $sum/$i"`" >> $finish

# sum=0
# i=0
# while IFS= read -r line; do
#   echo $line
#   sum=$(($sum+$line));
#   i=$(($i+1));
# done < $fchess
# echo "average chess: `bc <<< "scale=4; $sum/$i"`" >> $finish
 
# ----------------------------

# if [[ ! "$1" ]]; then
#   echo "not 1"
# else
#   echo "else"
# fi

# ----------------------------

# awk '/):\ /{print $NF}' /home/bm/Desktop/test.md # +

# sed -n -e '/english):\ / s/.*\= *//p' /home/bm/Desktop/test.md # -

# sed -i 's/\-\ result\ of\ english\ typing\ \[advanced\ test\]\(https:\/\/10fastfingers.com\/advanced\-typing\-test\/english\):\ //g' /home/bm/Desktop/test.md > te # -
# sed -i 's/*):\ //g' /home/bm/Desktop/test.md # -

# ----------------------------

# grep -rin "h1" /home/bm/Documents/Calibre\ Library/Get\ Lost/Mir\ maghov\ \(15\)/Mir\ maghov\ -\ Get\ Lost.epub
# Mir\ maghov\ -\ Get\ Lost.epub

# firefox --screenshot --window-size=1920,1080 /home/bm/Desktop/filename.png https://ranobelib.me/wushi-shijie/v1/c344
# /home/bm/htdocs/eProjects/abstractBackgroundGenerator/index.html

# ----------------------------
 
# finish="/home/bm/Desktop/finish"
# ftyping="/home/bm/Desktop/typing"
# period='/home/bm/Documents/base/Daily/2022*'
# cat $period | grep '10fastfingers.com' > $ftyping

# sum=0
# i=0
# while IFS= read -r line; do
#   echo $line
#   sum=$(($sum+$line));
#   i=$(($i+1));
# done < $ftyping
# echo "average typing: `bc <<< "scale=4; $sum/$i"`"

# ----------------------------

# backup my Obsidian files

#data=`date +%Y%m%d%H%M%S`
#from='/home/bm/Documents/base'
#toNewFile='/home/bm/Documents/Backups/backupObsidian/'$data'.tar'
##archive
#echo "archive from: \"$from\" to: \"$toNewFile\""
#tar -czf $toNewFile $from

# ----------------------------

# gradient generator

#podzial=5
#c1="ffffff"
#c2="000000"
##
#col1=`echo $((16#$c1))`
#col2=`echo $((16#$c2))`
##
#echo -e "${blue} podzial: $podzial ${end}"
#echo -e "${blue} hex: $c1 -> dec: $col1 ${end}"
#echo -e "${blue} hex: $c2 -> dec: $col2 ${end}"
##
## a .p. b
## if b>a -> c=b-a
## else -> c=a-b
## 0 .. c
## r=c/p
## i=0 while i<p-2 -> p_i=a+r
##
#if [ $col1 > $col2 ]; then
#  c=$(($col1-$col2));
#else
#  c=$(($col2-$col1));
#fi
#echo -e "${purple} c: $c ${end}";
##
#r=`bc <<< "scale = 0 ; $c/$podzial"`;
#echo -e "${purple} r: $r ${end}"
##
#echo -e "${purple} #$col1 ${end}"
#i=0;
#pi=$(($col1+$r));
#while (( $i < ${podzial-2} )); do 
#  pi=$(($pi+$r));
#  echo -e "${purple} #$((10#$pi)) ${end}";
#  i=$(($i+1));
#done
#echo -e "${purple} #$col2 ${end}"

# numbHex="ab10"
# numbDec="10"
# echo "dec: $numbHex -> hex: $((16#$numbHex))"
# echo "dec: $numbDec -> hex: $((16#$numbDec))"
# echo "dec: $numbDec -> dec: $((10#$numbDec))"
# echo "dec: $numbDec -> oct: $((8#$numbDec))"

# numb="1e1e1e"
# numbm="ffffff"
# echo "    hex: $numb -> dec: $((16#$numb))"
# echo "max hex: $numbm -> dec: $((16#$numbm))"
#
    # hex: 1e1e1e -> dec: 1973790
# max hex: ffffff -> dec: 16777215
# bm@dell:~$ # 0 ...1973790..16777215

# ----------------------------

#i=7
#n=32 # number of repetitions
## j=0
#finish="/home/bm/Desktop/test.md"
#while [ $i -lt $n ]
#do
#  if [ $i -lt 10 ]; then
#    name="ch0$i.html"
#  # elif [ $i -lt 100 ]; then
#  #   name="ch0$i.html"
#  #elif [ $i -lt 1000 ]; then
#    #name="ch0$i.html"
#  else
#    name="ch$i.html"
#  fi
#  echo "      <navPoint id=\"num_$i\" playOrder=\"$i\">
#      <navLabel>
#        <text>Глава $i</text>
#      </navLabel>
#      <content src=\"text/$name\"/>
#    </navPoint>" >> $finish
#  i=$(( $i + 1 ))
#  # j=$(( $j + 1 ))
#done

# ----------------------------

#black="\e[0;30m"
#red="\e[0;31m"
#green="\e[0;32m"
#yellow="\e[0;33m"
#blue="\e[0;34m"
#purple="\e[0;35m"
#cyan="\e[0;36m"
#white="\e[0;37m"
#end="\e[0m"
##
#bblack="\e[1;30m"
#bred="\e[1;31m"
#bgreen="\e[1;32m"
#byellow="\e[1;33m"
#bblue="\e[1;34m"
#bpurple="\e[1;35m"
#bcyan="\e[1;36m"
#bwhite="\e[1;37m"
#echo -e "${black} black ${end} | ${bblack} bblack ${end}"
#echo -e "${red} red ${end} | ${bred} bred ${end}"
#echo -e "${green} green ${end} | ${bgreen} bgreen ${end}"
#echo -e "${yellow} yellow ${end} | ${byellow} byellow ${end}"
#echo -e "${blue} blue ${end} | ${bblue} bblue ${end}"
#echo -e "${purple} purple ${end} | ${bpurple} bpurple ${end}"
#echo -e "${cyan} cyan ${end} | ${bcyan} bcyan ${end}"
#echo -e "${white} white ${end} | ${bwhite} bwhite ${end}"
#echo -e "${green} ▄▄▄      ██▀███   ▓█████    ▓██   ██▓ ▒█████   █    ██       ██░ ██  ▄▄▄      ██▓███   ██▓███  ▓██   ██▓▄▄██▌▄
#▒████▄   ▓██ ▒ ██▒ ▓█   ▀     ▒██  ██▒▒██▒  ██▒ ██  ▓██▒    ▒▓██░ ██ ▒████▄   ▓██░  ██ ▓██░  ██  ▒██  ██▒   ▄██
#▒██  ▀█▄ ▓██ ░▄█ ▒ ▒███        ▒██ ██░▒██░  ██▒▓██  ▒██░    ░▒██▀▀██ ▒██  ▀█▄ ▓██░ ██▓▒▓██░ ██▓▒  ▒██ ██░ ▐▀█▌ 
#░██▄▄▄▄██▒██▀▀█▄   ▒▓█  ▄      ░ ▐██▓░▒██   ██░▓▓█  ░██░     ░▓█ ░██ ░██▄▄▄▄██▒██▄█▓▒ ▒▒██▄█▓▒ ▒  ░ ▐██▓░ ▓██▒ 
#▒▓█   ▓██░██▓ ▒██▒▒░▒████      ░ ██▒▓░░ ████▓▒░▒▒█████▓      ░▓█▒░██▓▒▓█   ▓██▒██▒ ░  ░▒██▒ ░  ░  ░ ██▒▓░ ▒▄▄  
#░▒▒   ▓▒█░ ▒▓ ░▒▓░░░░ ▒░        ██▒▒▒ ░ ▒░▒░▒░ ░▒▓▒ ▒ ▒       ▒ ░░▒░▒░▒▒   ▓▒█▒▓▒░ ░  ░▒▓▒░ ░  ░   ██▒▒▒  ░▀▀▒ 
#░ ░   ▒▒   ░▒ ░ ▒ ░ ░ ░       ▓██ ░▒░   ░ ▒ ▒░ ░░▒░ ░ ░       ▒ ░▒░ ░░ ░   ▒▒ ░▒ ░     ░▒ ░      ▓██ ░▒░  ░  ░ 
#  ░   ▒    ░░   ░     ░       ▒ ▒ ░░  ░ ░ ░ ▒   ░░░ ░ ░       ░  ░░ ░  ░   ▒  ░░       ░░        ▒ ▒ ░░      ░ 
#      ░     ░     ░   ░       ░ ░         ░ ░     ░           ░  ░  ░      ░                     ░ ░      ░    \e[0m"

# ----------------------------

# cat /etc/passwd
# sed 's/([^:]*).*/1/' /etc/passwd

# ----------------------------

# money=( 'a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z' )
# 1k 1000
# 1M 1000k
# 1T 1000M
# 1B 1000T

# ----------------------------

# wget --no-dns-cache --no-cookies --no-cache --ignore-length --no-check-certificate -r https://ranobelib.me/guang-zhi-zi/v1/c1

# wget -U "Mozilla/5.0 (X11; Linux x86_64; rv:99.0) Gecko/20100101 Firefox/99.0" --header="Accept: text/html" --header="Cookie: eyJpdiI6IlprT09wT1cyOVY3OE81K3oxSklJT3c9PSIsInZhbHVlIjoiQkFrbi9NdytCaHpLTTh0T1dzK1I0UklaT2FGeFRzNC82VVlZN25NNGthbnArSjl5OE53M1JtZTVVWVk2UXdkSmNFVzhyQzRkRzdobm9rV2hoOElpeld3OGlUOFN0SGtiTnpHK1BiZG9OWWswU05MN1creVpKOE51clBkVHVDenAiLCJtYWMiOiIyNjcwZGMxYmRiOWVmYzNjYWIzMWM1OTUyODg3ZmY4NjU3NTRjY2IwNDM5MzM4MzZhYWY4ZTU2YmY2NmVkZGRkIn0=" -np -r https://ranobelib.me/the-villainess-noble-girl-wants-to-slim-down-her-husband/v1/c4

# ----------------------------

# cyfry="1  2   3   4  5     6
# 
# 7
# 8"
# 
# echo 1\| $cyfry
# echo "2\| $cyfry"
# echo 3\| ${cyfry}
# echo "4\| ${cyfry}"

# ----------------------------

# i=101
# n=150 # number of repetitions
# n=$(( $n + 1 ))
# echo "copy to toc ($i - $(( $n - 1 )))"
# file="/home/bm/pr"
# echo "" > $file
# while [ $i -lt $n ]
# do
#   echo "&nbsp;<a epub:type=\"noteref\" href=\"footnotes.xhtml#footnote-$i\" id=\"footnote-$i-backlink\">[$i]</a>
#   <aside epub:type=\"footnote\" id=\"footnote-$i\">
#     <p class=\"footnote\"><a href=\"ch0.html#footnote-$i-backlink\">[$i]</a> </p>
#   </aside>" >> $file
#   i=$(( $i + 1 ))
# done
# xclip -selection clipboard $file

# ----------------------------

# file="/home/bm/Desktop/pr"
# date > $file
# xclip -selection clipboard $file
# echo "copy date to clipboard"

# ----------------------------

# i=0
# j=1
# n=122 # number of repetitions
# file="/home/bm/Desktop/pr"
# echo "" > $file
# while [ $i -lt $n ]
# do
#   if [ $i -lt 10 ]; then
#     name="ch00$i.html"
#   elif [ $i -lt 100 ]; then
#     name="ch0$i.html"
#   else
#     name="ch$i.html"
#   fi
#   echo "    <navPoint id=\"num_$j\" playOrder=\"$j\">
#       <navLabel>
#         <text>Глава $i</text>
#       </navLabel>
#       <content src=\"$name\"/>
#     </navPoint>" >> $file
#   i=$(( $i + 1 ))
#   j=$(( $j + 1 ))
# done
# echo "    <navPoint id=\"num_$j\" playOrder=\"$j\">
#       <navLabel>
#         <text>QR код для скачивания книги</text>
#       </navLabel>
#       <content src=\"info.html#toc_1\"/>
#     </navPoint>" >> $file
# xclip -selection clipboard $file

# ----------------------------

# p=`pwd`
# cd $p
# touch file123

# ----------------------------

# url="https://ranobelib.me/sokushi-cheat-ga-saikyou-sugite-isekai-no-yatsura-ga-marude-aite-ni-naranai-n-desu-ga-ln/v2/c4"
# U="Mozilla/5.0 (X11; Linux x86_64; rv:100.0) Gecko/20100101 Firefox/100.0"
# cookie="mt_ov78r4VyXIt7dQr1nn2yMyQFQ17CcQHWJXdMoXD4-1653661413-0-AWV1+khOJc5kxxozwM2jeV3cJylHV0TDeQBmyKM6KEiRhmZQWH1PPxjkhvFDIgPEQ7N+yu8Y2lhVqUFQGepmigmyojzKvTvc2OPxOeTx+GzDJ/Y2Kx3Wa4Yl0EV77miOKg=="
# cf_clearance="sc6hZHxcP6tpiXIpfbWlFKNB4ZAANkJ.W4WbQKEbqe8-1647719721-0-150"
# SaveTo="/tmp/this"
# timeout=5

# wget -U $U --show-progress --random-wait --header="Accept: text/html" --header="Cookie: __cfduid=xpzezr54v5qnaoet5v2dx1ias5xx8m4faj7d5mfg4og; cf_clearance=$cf_clearance" -np -r $url
# wget -U $U --random-wait --header="Accept: text/html" --header="Cookie: $cookie; cf_clearance=$cf_clearance" -np $url

# --header="Cookie: __cfduid=xpzezr54v5qnaoet5v2dx1ias5xx8m4faj7d5mfg4og; cf_clearance=0n01f6dkcd31en6v4b234a6d1jhoaqgxa7lklwbj-1438079290-3600" -np -r http://www.teamspeak.com/
# --header="Cookie: __cfduid=xpzezr54v5qnaoet5v2dx1ias5xx8m4faj7d5mfg4og; cf_clearance=0n01f6dkcd31en6v4b234a6d1jhoaqgxa7lklwbj-1438079290-3600" -np -r http://www.teamspeak.com/

# ----------------------------

# testn=830
# i=$testn
# n=$testn

# n 0-9      000i
# n 10-99     00i
# n 100-999    0i
# n 1000-9999   i

# z=0
# if [ $n -lt 10 ]; then
#   z=1
# elif [ $n -lt 100 ]; then
#   z=2
# elif [ $n -lt 1000 ]; then
#   z=3
# elif [ $n -lt 10000 ]; then
#   z=4
# elif [ $n -lt 100000 ]; then
#   z=5
# fi
# case $z in
#   "5")
#     # if [ $i -lt 100000 ]; then
#     #   name="ch0$i.html"
#     # elif [ $i -lt 100000 ]; then
#     # else
#     #   name="ch$i.html"
#     # fi
#     # case $i in
#     #   "1") name="ch000$i.html" ;;
#     #   "2") name="ch00$i.html" ;;
#     #   "3") name="ch0$i.html" ;;
#     #   "4") name="ch0$i.html" ;;
#     #   "5") name="ch0$i.html" ;;
#     # esac
#   "4") name="ch00$i.html" ;;
#   "3") name="ch0$i.html" ;;
#   "2") name="ch0$i.html" ;;
#   *) name="ch$i.html"
# esac
# echo $name

#   if [ $n -gt 999 ] && [ $n -lt 9999 ] ; then
#     name="ch0$i.html"
#   elif [ $n -lt 100 ]; then
#     if [ $i -lt 10 ]; then
#       name="ch0$i.html"
#     else
#       name="ch$i.html"
#     fi
#   else
#     if [ $i -lt 10 ]; then
#       name="ch00$i.html"
#     elif [ $i -lt 100 ]; then
#       name="ch0$i.html"
#     else
#       name="ch$i.html"
#     fi
#   fi

# ----------------------------
 
# function numberOfZeros {
#   local numberIn=$1
#   local wynnik=1
#   local z=1
#   while [ $z -le $numberIn ];
#   do
#     z=$(( $z * 10 ))
#     wynnik=$(( $wynnik + 1 ))
#   done
#   echo $(( $wynnik - 1 ))
# }
# function testNumber {
#   numberIn=$1
#   echo "$numberIn"
#   echo "$(numberOfZeros $numberIn)"
# }
# testNumber 0
# testNumber 5
# testNumber 10
# testNumber 100
# testNumber 101

# echo "------------------"
# function stringZero {
#   local numberIn=$1
#   local i=0
#   local z=""
#   while [ $i -lt $numberIn ];
#   do
#     z="${z}0"
#     i=$(( $i + 1 ))
#   done
#   echo "$z"
# }
# function testStringZero {
#   numberIn=$1
#   echo "$numberIn"
#   stringZero $numberIn
#   # echo "$(stringZero $numberIn)"
#   echo "------------------"
# }

# testStringZero 0
# testStringZero 1
# testStringZero 2
# testStringZero 3
# testStringZero 4
# testStringZero 5
# testStringZero 6
# testStringZero 7

# echo "-- generateName --"
# function generateName {
#   numberIn=$1
#   numberIn2=$2
#   t="$(numberOfZeros $numberIn2)"
#   t2="$(numberOfZeros $numberIn)"
#   zero="$(stringZero $(( $t - $t2 )))"
#   echo "ch${zero}$numberIn.html"
# }
# function testgenerateName {
#   numberIn=$1
#   numberIn2=$2
#   echo "$numberIn $numberIn2"
#   generateName $numberIn $numberIn2
#   echo "------------------"
# }
# testgenerateName 0 3499
# testgenerateName 3 3499
# testgenerateName 10 3499
# testgenerateName 1000 3999
# testgenerateName 1001 3999

# ----------------------------

# function wyswietl_imie {
#   imie=`cat $nameFile`
#   echo "Twoje imie to: $imie"
#   rm -f $nameFile
# }
# function cancel {
#   echo "Wcisnieto przycisk Nie, lub Anuluj"
#   rm -f $nameFile
#   exit 1
# }
# function esc {
#   echo "Wcisnieto klawisz ESC"
#   rm -f $nameFile
#   exit 2
# }
# nameFile="/tmp/input.$$"
# dialog --title "Twoje imie" --inputbox "Wpisz swoje imie" 8 50 2> $nameFile
# dialogreturn=$?
# clear
# case $dialogreturn in
#   "0") wyswietl_imie ;;
#   "1") cancel ;;
#   "255") esc ;;
# esac

# function formularz {
#   dialog --form "Zgloszenie" 25 60 20 "Imie" 1 1 "" 1 20 30 30 \
#   "Nazwisko" 2 1 "" 2 20 30 30 \
#   "Dzien urodzenia" 3 1 "" 3 20 30 2 \
#   "Miesiac urodzenia" 4 1 "" 4 20 30 2 \
#   "Rok urodzenia" 5 1 "" 5 20 30 4 \
#   "Kolor oczu" 6 1 "" 6 20 30 30 \
#   "Kolor wlosow" 7 1 "" 7 20 30 30 \
#   2> $PLIK
# }
# function dane {
#   wszystkieDane=`cat $PLIK`
#   for i in `seq 1 $[ILOSC_WIERSZY]`
#   do
#     szczegoloweDane[$[i-1]]=`echo $wszystkieDane | awk "{print $"$i"}"`
#     i=$[i+1]
#   done
# }
# function koniec {
#   case $1 in
#     "255") rm -f $PLIK; exit 1 ;;
#     "1") rm -f $PLIK; exit 2 ;;
#   esac
# }
# function wyswietl_info {
#   echo "Imie: ${szczegoloweDane[0]}"
#   echo "Nazwisko: ${szczegoloweDane[1]}"
#   echo "Dzien urodzenia: ${szczegoloweDane[2]}"
#   echo "Miesiac urodzenia: ${szczegoloweDane[3]}"
#   echo "Rok urodzenia: ${szczegoloweDane[4]}"
#   echo "Kolor oczu: ${szczegoloweDane[5]}"
#   echo "Kolor wlosow: ${szczegoloweDane[6]}"
# }
# PLIK="file.$$"
# ILOSC_WIERSZY="7"
# formularz
# result=$?
# clear
# koniec $result
# dane
# if [ "$result" = "0" ]
# then
#   wyswietl_info
# fi
# rm -f $PLIK
# exit 0

# sourceUrl="/home/bm/pr"
# # echo "Url"
# url="/tmp/firstChapters"
# cp $sourceUrl $url
# sed -i 's/\ /\n/g' $url
# chr() {
#   [ "$1" -lt 256 ] || return 1
#   printf "\\$(printf '%03o' "$1")"
# }
# ord() {
#   LC_CTYPE=C printf '%d' "'$1"
# }

# function littleChapter {
#   local chapter="$1"
#   # if [ "$chapter" -ge "$(chr 65)" ] && [ "$chapter" -le "$(chr 90)" ] 
#   if [ "$(ord $chapter)" -ge 65 ] && [ "$(ord $chapter)" -le 90 ] 
#   then
#     chapterInt=$(( $(ord $chapter) + 32 ))
#     chapter=$(chr $chapterInt)
#   elif [ "$(ord $chapter)" -ge 97 ] && [ "$(ord $chapter)" -le 122 ] 
#   then
#     chapter="$chapter"
#   else
#     chapter=""
#   fi
#   echo "$chapter"
#   # return $chapter
# }

# function testlittleChapter {
#   local thisC="$1"
#   echo "$thisC -> $(littleChapter $thisC)"
# }
# testlittleChapter "a"
# testlittleChapter "A"
# testlittleChapter "b"
# testlittleChapter "B"
# testlittleChapter ","
# testlittleChapter "3"
# testlittleChapter ""

# result=""
# while IFS= read -r line; 
# do 
#   # echo "$line"
#   # firstCharacter=${line:0:1}
#   chapter=${line:0:1}
#   # littleChapter $chapter
#   # littleChapterFinish=$?
#   littleChapterFinish=$(littleChapter $chapter)
#   result="$result$littleChapterFinish"
#   echo "$chapter -> $littleChapterFinish"
# done < $url
# echo "result: $result"

# echo "Url"
# cat $url

# function littleChapter{
#   $chapter=$1
#   if [ "$chapter" -ge 65 ] $$ [ "$chapter" -le 90 ] 
#   then
#     $chapter = $(( $chapter + 32 ))
#   elif [ "$chapter" -ge 97 ] $$ [ "$chapter" -le 122 ] 
#     a=0;
#   else
#     $chapter=""
#   fi
#   return $chapter
# }

# littleChapter $chapter
# littleChapterFinish=$?
# echo "$chapter -> $littleChapterFinish"

# ----------------------------

# j=0
# for i in `seq -w 0 2021`
# do
#   echo -n "$i " 
#   if [ $j -ge 20 ] 
#   then
#     j=0
#     echo -e "\n" 
#   fi
#   j=$[j+1]
# done
# echo -e "\n" 

# ----------------------------

# function dialogYesNo {
#   local title=$1
#   local backtitle=$2
#   local yes=$3
#   local no=$4
#   local yesno=$5
#   dialog --title "$title" \
#   --backtitle "$backtitle" \
#   --yes-label "$yes" \
#   --no-label "$no" \
#   --yesno "$yesno" 7 60
#   return $?
# }
# GlobalTitle="Connect people in LinkedIn"
# GlobalTitleBacktitle="Just enter +1"
# GlobalTitleYesLabel="+1"
# GlobalTitleNoLabel="The end"
# GlobalTitleAnswer="Are you connect people?"
# i=1
# # dialogYesNo "$GlobalTitle $GlobalTitleBacktitle $GlobalTitleYesLabel $GlobalTitleNoLabel $GlobalTitleAnswer"
# dialogYesNo "$GlobalTitle" "$GlobalTitleBacktitle" "$GlobalTitleYesLabel" "$GlobalTitleNoLabel" "$GlobalTitleAnswer"
# response=$?
# peopleAdded=0
# if [ "$response" = "0" ]
# then
#   let peopleAdded+=1
# else
#   echo -e "${red}You don't connected peoples!${end}"
#   exit 1
# fi
# while [ "$response" = "0" ]
# do
#   GlobalTitleAnswer="Are you connect people? (now $i)"
#   dialogYesNo "$GlobalTitle" "$GlobalTitleBacktitle" "$GlobalTitleYesLabel" "$GlobalTitleNoLabel" "$GlobalTitleAnswer"
#   response=$?
#   if [ "$response" = "0" ]
#   then
#     let peopleAdded+=1
#   fi
#   let i+=1
# done
# echo "People send connect: $peopleAdded"

# ----------------------------



# if [ "$1" = "" ]
# then
#   echo "input = 0"
# else
#   echo "input != 0"
# fi

# ----------------------------

# urlCalendar="/tmp/calendarResult"
# function dialogCalendar {
#   local text="text Calendar"
#   local day=`date +%d`
#   local month=`date +%m`
#   local year=`date +%y`
#   dialog --title "Calendar" \
#   --calendar "$text" 7 60 "$day" "$month" "$year" 2> $urlCalendar
# }
# dialogCalendar
# echo "response: $(cat $urlCalendar)"

# ----------------------------

# url="/tmp/testArrayFile$$"
# # enter information
# echo -n "" > $url
# for i in `seq  1 10`
# do
#   echo "i: $i" >> $url
# done
# # read information
# i=0
# while IFS= read -r line; 
# do 
#   currentArray[$i]="$line"
#   # echo "read line by line: $line"
#   echo "currentArray: \"${currentArray[$i]}\""
#   i+=1
# done < $url
# # test
# echo "files in file($url): ${#currentArray[@]}"
# echo "The last entered in file($url): \"$(tail -n 1 "$url")\""
# # one="text"
# # echo "in one: ${#one[@]}"
# two=""
# echo -n "$two" > $url
# # if [ -z $two ]
# if [ -n $url ]
# then
#   echo "in two: \"\""
# else
#   echo "in two: \"${#two[@]}\""
# fi
# rm -f $url

# fname=john
# john=thomas
# echo ${!fname}

# linux=("one" "two" "thre" "fwo" "fie")
# x=3
# linux=(

# if [ -f ~/pr ]; then
#   echo "file"
# fi

# ----------------------------

# url="/home/bm//pr"
# echo "`cat $url`"

# ----------------------------

# # url="https://www.mtlnovel.com/bai-fumei-in-the-70s/chapter-1/"
# url="https://www.readwn.com/novel/hacker_1.html"
# # wget --level=1 --user-agent=Mozilla --no-parent --convert-links --no-clobber -e robots=off $url
# wget --user-agent=Mozilla $url
# # firefox $url

# ----------------------------

# gnome-terminal -- sh -c 'cd /tmp'
# ps aux | egrep "Z|defunct"

# ----------------------------

# # skrypt TthisChapterT LastChapter directory
# # pwd="$PWD"
# # cd /tmp
# urlCurentChapter="/tmp/lastChapter$$"
# lastChapter=470
# if [ ! "$1" ]
# then
#   echo "notEnterFirst"
#   echo "directory = This"
#   if [ ! -e $urlCurentChapter ]
#   then
#     echo "isFile"
#     echo "CurentChapter = File"
#     echo "CurentChapter += 1"
#     echo "File = CurentChapter"
#   else
#     echo "notFile"
#     echo "Create File"
#     echo "CurentChapter = Enter"
#   fi
#   echo "lastChapter = CurentChapter"
# else
#   echo "enterFirst"
#   if [ ! "$2" ]
#   then
#     echo "notEnterSecond"
#     echo "CurentChapter = First"
#     echo "lastChapter = CurentChapter"
#     echo "directory = This"
#   else
#     echo "enterSecond"
#     echo "CurentChapter = First"
#     echo "lastChapter = Second"
#     if [ ! "$3" ]
#     then
#       echo "notEnterThird"
#       echo "directory = This"
#     else
#       echo "enterThird"
#       echo "directory = Third"
#       directory="$3"
#       if [ ! -d "$directory" ]
#       then
#         echo "notDirectory"
#         echo "Create Directory"
#       fi
#     fi
#   fi
# fi


# skrypt directory LastChapter TthisChapterT

# urlCurentChapter="/tmp/lastChapter$$"
# lastChapter=470
# directory=""
# if [ ! -e $urlCurentChapter ]
# then
#   echo "isFile"
#   echo "CurentChapter = File"
#   echo "CurentChapter += 1"
#   echo "File = CurentChapter"
# else
#   echo "notFile"
#   echo "Create File"
#   echo "CurentChapter = Enter"
# fi
# if [ ! "$1" ]
# then
#   echo "notEnterFirst"
#   echo "directory = This"
#   # enterChapter
#   echo "lastChapter = CurentChapter"
# else
#   echo "enterFirst"
#   echo "directory = First"
#   directory="$1"
#   if [ ! -d "$directory" ]
#   then
#     echo "notDirectory"
#     echo "Create Directory"
#   fi
#   # enterChapter
#   if [ ! "$2" ]
#   then
#     echo "notEnterSecond"
#     echo "lastChapter = CurentChapter"
#   else
#     echo "enterSecond"
#     echo "lastChapter = Second"
#     if [ "$3" ]
#     then
#       echo "enterThird"
#       echo "CurentChapter = Third"
#     fi
#   fi
# fi

# ----------------------------

# function isOneVariable {
#   local url="$1"
#   if [ "$(head -n 1 $url)" = "$(tail -n 1 $url)" ]
#   then
#     # echo "isOneVariable 0"
#     return "0"
#   else
#     # echo "isOneVariable 1"
#     return "1"
#   fi
# }
# function tableHtml {
#   local url="$1"
#   local urlLink="$2"
#   local formName="$3"
#   local formNames="$4"
#   local result=""
#   if [ -z "$(cat $url)" ] #ma zerową wartość
#   then
#     echo "file is empty"
#   else
#     if [ "$(isOneVariable $url)" = "0" ] #ma jedną odpowiedź
#     then
#       echo "file have one row"
#     else
#       if [ "$(cat $urlLink)" = "" ]
#       then
#         echo "file link is empty"
#         local i=0
#         while IFS= read -r line; 
#         do 
#           echo "line[$i] $line"
#           let i+=1
#         done < $url
#         if [ $i = 1 ]
#         then
#           echo "variable is one"
#         else
#           local n=$i
#           echo "while $i - $n"
#           i=1
#           while [ $i -lt $n ]
#           do
#             echo "row $i"
#             let i+=1
#           done
#         fi
#       else
#         echo "file link is not empty"
#         local i=0
#         while IFS= read -r line; 
#         do 
#           echo "line[$i] $line"
#           let i+=1
#         done < $url
#         i=0
#         while IFS= read -r line; 
#         do 
#           echo "lineLink[$i] $line"
#           let i+=1
#         done < $urlLink
#         if [ $i = 1 ]
#         then
#           echo "variable is one"
#         else
#           local n=$i
#           i=1
#           echo "while $i - $n"
#           while [ $i -lt $n ]
#           do
#             echo "row $i"
#             let i+=1
#           done
#         fi
#       fi
#     fi
#   fi
#   # echo -n "$result"
#  }
# echo "empty row and link"
# tableHtml "emptyRow" "emptyRowLink" "text" "texts"
# echo -e "\nempty link"
# tableHtml "row" "emptyRowLink" "text" "texts"
# echo -e "\nnormal one"
# tableHtml "row" "rowLink" "text" "texts"
# echo -e "\nnormal two"
# tableHtml "rowTwo" "rowLinkTwo" "text" "texts"

# ----------------------------

# function numberOfZeros {
#   local numberIn=$1
#   local wynnik=1
#   local z=1
#   while [ $z -le $numberIn ];
#   do
#     z=$(( $z * 10 ))
#     wynnik=$(( $wynnik + 1 ))
#   done
#   echo $(( $wynnik - 1 ))
# }
# function stringZero {
#   local numberIn=$1
#   local i=0
#   local z=""
#   while [ $i -lt $numberIn ];
#   do
#     z="${z}0"
#     i=$(( $i + 1 ))
#   done
#   echo "$z"
# }
# function generateName {
#   numberIn=$1
#   numberIn2=$2
#   t="$(numberOfZeros $numberIn2)"
#   t2="$(numberOfZeros $numberIn)"
#   zero="$(stringZero $(( $t - $t2 )))"
#   echo "ch${zero}$numberIn.html"
# }

# Том 1 Глава 1 - Давай поженимся.
# Том 1 Глава 2 - Кремация мертвой
# Том 1 Глава 3 - Моя причина жениться на тебе.
# Том 1 Глава 4 - Встреча с родителями.
# Том 1 Глава 5 - Ты должен мне пощечину.
# Том 1 Глава 6 - Ежедневные поддразнивания
# Том 1 Глава 7 - Отдай свою зарплатную карту
# Том 1 Глава 8 - Доброе утро
# Том 1 Глава 9 - Очень легко научиться быть избалованной
# Том 1 Глава 10 - Романтические слова
# Том 1 Глава 11 - Твоя жена пыталась вытащить тебя
# Том 1 Глава 12 - Любовные стихи
# Том 1 Глава 13 - Найти девушку нелегко
# Том 1 Глава 14 - Ты можешь не дразнить меня?
# Том 1 Глава 15 - Я испортила свадьбу моей однокурсницы
# Том 1 Глава 16 - Встреча с бывшей
# Том 1 Глава 17 - Пьянка
# Том 1 Глава 18 - Крыша, полная цветов
# Том 1 Глава 19 - Губная помада
# Том 1 Глава 20 - Он - мой мужчина
# Том 1 Глава 21 - Давай влюбляться
# Том 1 Глава 22 - Знаки любви
# Том 1 Глава 23 - Дарю тебе себя
# Том 1 Глава 24 - Осмелится ли она бросить мне вызов?
# Том 1 Глава 25 - Первая ссора
# Том 1 Глава 26 - Поцелуй
# Том 1 Глава 27 - Еще одно море цветов.
# Том 1 Глава 28 - Мой образ жизни изменился.
# Том 1 Глава 29 - Случай на 20 шоссе
# Том 1 Глава 30 - Счастье вопреки болезни
# Том 1 Глава 31 - Три в одном
# Том 1 Глава 32 - Ты очень послушный, я тоже довольно хороша
# Том 1 Глава 33 - Обязательно дождусь тебя
# Том 1 Глава 34 - Ты - мое солнце, я - твой дом
# Том 1 Глава 35 - Я скажу тебе сейчас
# Том 1 Глава 36 - Опасный мистер Сильный
# Том 1 Глава 37 - Собака Сяо Юэ
# Том 1 Глава 38 - Особый дар
# Том 1 Глава 39 - 1 Мая
# Том 1 Глава 40 - Взгляд матери на зятя
# Том 1 Глава 41 - Единственный способ добраться до него — это через меня
# Том 1 Глава 42 - Доктор Ся кормит поросят
# Том 1 Глава 43 - Не достаточно
# Том 1 Глава 44 - Преимущества
# Том 1 Глава 45 - Возвращение
# Том 1 Глава 46 - Любовь не может быть рассчитана на основе времени
# Том 1 Глава 47 - Защита только для одного человека
# Том 1 Глава 48 - Последствия губной помады
# Том 1 Глава 49 - Серые тона жизни
# Том 1 Глава 50 - Во имя любви
# Том 1 Глава 51 - Взаимная зависимость
# Том 1 Глава 52 - Я встретил тебя первым
# Том 1 Глава 53 - Причины выбора
# Том 1 Глава 54 - Поцелуй красавицы
# Том 1 Глава 55 - Методы воспитания
# Том 1 Глава 56 - Вырастет сам
# Том 1 Глава 57 - Беременность
# Том 1 Глава 58 - Финал
# Том 1 Глава 59 - Дополнительная история №1
# Том 1 Глава 60 - Дополнительная история №2 Ребенок
# Том 1 Глава 61 - Дополнительная история №3 Иностранец

# allChapters=( "Давай поженимся." "Кремация мертвой" "Моя причина жениться на тебе." "Встреча с родителями." "Ты должен мне пощечину." "Ежедневные поддразнивания" "Отдай свою зарплатную карту" "Доброе утро" "Очень легко научиться быть избалованной" "Романтические слова" "Твоя жена пыталась вытащить тебя" "Любовные стихи" "Найти девушку нелегко" "Ты можешь не дразнить меня?" "Я испортила свадьбу моей однокурсницы" "Встреча с бывшей" "Пьянка" "Крыша, полная цветов" "Губная помада" "Он - мой мужчина" "Давай влюбляться" "Знаки любви" "Дарю тебе себя" "Осмелится ли она бросить мне вызов?" "Первая ссора" "Поцелуй" "Еще одно море цветов." "Мой образ жизни изменился." "Случай на 20 шоссе" "Счастье вопреки болезни" "Три в одном" "Ты очень послушный, я тоже довольно хороша" "Обязательно дождусь тебя" "Ты - мое солнце, я - твой дом" "Я скажу тебе сейчас" "Опасный мистер Сильный" "Собака Сяо Юэ" "Особый дар" "1 Мая" "Взгляд матери на зятя" "Единственный способ добраться до него — это через меня" "Доктор Ся кормит поросят" "Не достаточно" "Преимущества" "Возвращение" "Любовь не может быть рассчитана на основе времени" "Защита только для одного человека" "Последствия губной помады" "Серые тона жизни" "Во имя любви" "Взаимная зависимость" "Я встретил тебя первым" "Причины выбора" "Поцелуй красавицы" "Методы воспитания" "Вырастет сам" "Беременность" "Финал" "Дополнительная история №1" "Дополнительная история №2 Ребенок" "Дополнительная история №3 Иностранец" )

# n=${#allChapters[@]}
# echo "n: $n"
# tocFile="thisTocFile"
# thisChapterName="thisChapterName"
# echo -n "" > $tocFile
# echo -n "" > $thisChapterName
# j=1
# for i in `seq 0 $[n-1]`
# do
#   name="$(generateName $j $n)"
#   echo "    <navPoint id=\"num_$j\" playOrder=\"$j\">
#       <navLabel>
#         <text>Глава $j. ${allChapters[$i]}</text>
#       </navLabel>
#       <content src=\"$name\"/>
#     </navPoint>" >> $tocFile
#   # read -p "Did you want copy next chapter?" yes
#   # echo -n "$j. ${allChapters[$i]}" > $thisChapterName 
#   # xclip -selection clipboard $thisChapterName
#   # echo "Copied"
#   j=$(( $j + 1 ))
# done
# echo "    <navPoint id=\"num_$j\" playOrder=\"$j\">
#       <navLabel>
#         <text>QR код для скачивания книги</text>
#       </navLabel>
#       <content src=\"info.html#toc_1\"/>
#     </navPoint>" >> $tocFile
# read -p "Did you want copy toc file?" yes
# xclip -selection clipboard $tocFile

# ----------------------------

# function summary {
#   local url="$1"
#   local sumary=0
#   while IFS= read -r row; 
#   do 
#     let sumary+=$row
#   done < $url
#   echo "summary: $sumary"
# }
# url="allWords"
# summary "$url"

# ----------------------------

# function convertTag {
#   local url="$1"
#   sed -i 's/>/>\n/g' $url
#   sed -i 's/</\n</g' $url
#   sed -i 's/  / /g' $url
#   sed -i 's/  / /g' $url
#   sed -i 's/  / /g' $url
#   sed -i 's/  / /g' $url
#   sed -i 's/  / /g' $url
#   sed -i 's/  / /g' $url
#   sed -i 's/  / /g' $url
#   sed -i 's/  / /g' $url
#   sed -i 's/  / /g' $url
#   sed -i 's/  / /g' $url
#   sed -i '/<*>/d' $url
#   sed -i '/^$/d' $url
#   local n=`cat $url | wc -l`
#   if [ "$n" -gt "1" ]
#   then
#     local tmpUrl="$url"
#     tmpUrl+="tmp"
#     echo "" > "$tmpUrl"
#     local i=0
#     while IFS= read -r line; 
#     do 
#       if [ $i -lt $(( $n - 1 )) ] ;
#       then
#         echo -n "$line, " >> "$tmpUrl"
#       else
#         echo -n "$line" >> "$tmpUrl"
#       fi
#       let i+=1
#     done < "$url"
#     cat "$tmpUrl" > "$url"
#     rm -f $tmpUrl
#   fi
# }
# function enterTags {
#   local urlTags="$1"
#   local title="$2"
#   local answer="$3"
#   # title="$(translateFromEnglish "$GlobalLanguageCode" "$title")"
#   # answer="$(translateFromEnglish "$GlobalLanguageCode" "$answer")"
#   local GlobalTags="novel"
#   dialogYesNo "$title" "$GlobalBacktitle" "$GlobalYesLabel" "$GlobalNoLabel" "$answer"
#   local response="$?"
#   if [ "$response" = "0" ]
#   then
#     GlobalTags="$(copyText)"
#   else
#     echo -e "${red}You don't enter $title!${end}"
#   fi
#   echo -n "$GlobalTags" > "$urlTags"
#   convertTag "$urlTags"
# }
# url="newUrl$$"
# enterTags "$url" "Title $$" "Answer $$"
# cat $url
