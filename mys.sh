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

#procent
# echo "$((($2*100)/$1))"
#100 $1
#x $2
#x=($2*100)/$1

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

echo "#eeffcc"

