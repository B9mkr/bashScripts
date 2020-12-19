#! /bin/bash

extractTo='./'
extractFrom=$1
gpg $extractFrom.gpg
tar -vxzf $extractFrom -C $extractTo
#rm -rf $extractFrom $extractFrom.gpg
