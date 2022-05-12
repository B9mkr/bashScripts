#! /bin/bash

timeSleep="3s"
echo "sleeping $timeSleep"
sleep $timeSleep

timeSpent=`date -ud @$SECONDS "+%H:%M:%S"`
echo "Time spent: $timeSpent"

#filename=$1

#gpg $filename.tar.gz.gpg && tar -xzf $filename.tar.gz -C $PWD
#rm -rf $filename.tar.gz

#sudo add-apt-repository ppa:atareao/telegram
#sudo apt-get update
#sudo apt-get install telegram


#echo 'Вы хотите зашифровать данные или расшифровать?'
#read -p "1 - Зашифровать, 2 - Расшифровать: " gpg_set

#if [[ $gpg_set == 1 ]]; then
 #read -p "Введите имя файла, который вы хотите зашифровать: " filename
 #tar -czf $filename.tar.gz $filename && gpg -c $filename.tar.gz
 #rm -rf $filename $filename.tar.gz
#elif [[ $gpg_set == 2 ]]; then
  #read -p "Введите имя файла, который вы хотите расшифровать: " filename
  #gpg $filename.tar.gz.gpg && tar -xzf $filename.tar.gz -C $PWD
  #rm -rf $filename.tar.gz
#fi

#echo 'Вы хотите зашифровать данные или расшифровать?'
#read -p "1 - Зашифровать, 2 - Расшифровать: " gpg_set
#gpg_set=$1
#filename=$2
#if [[ $gpg_set == 1 ]]; then
 #read -p "Введите имя файла, который вы хотите зашифровать: " filename
 #tar -czf $filename.tar.gz $filename && gpg -c $filename.tar.gz
 #rm -rf $filename $filename.tar.gz
#elif [[ $gpg_set == 2 ]]; then
  #read -p "Введите имя файла, который вы хотите расшифровать: " filename
  #gpg $filename.tar.gz.gpg && tar -xzf $filename.tar.gz -C $PWD
  #rm -rf $filename.tar.gz
#fi
