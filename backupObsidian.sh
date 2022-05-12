#! /bin/bash

data=`date +%Y%m%d%H%M%S`
cd '/home/bm/Documents'
from='base'
toNewFile='/home/bm/Documents/Backups/backupObsidian/'$data'.tar'

#archive
echo "archive from: \"$PWD$from\" to: \"$toNewFile\""
tar -czf $toNewFile $from
echo "gpg file: $toNewFile"
gpg -c $toNewFile
echo "remove file: $toNewFile"
rm -rf $toNewFile

ls -l "/tmp"

#echo "----"

#extractTo='/tmp/extract/'

#echo "encrypt file: \"$toNewFile.gpg\""
#gpg $toNewFile.gpg 
#unarchive
#echo "unarchive file: \"$toNewFile\" to: \"/tmp/extract/\""
#tar -vxzf $toNewFile -C $extractTo
#echo "remove file: $toNewFile.gpg"
#rm -rf $toNewFile $toNewFile.gpg

