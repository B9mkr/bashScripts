#! /bin/bash

# Example:
#
# ./editChapters.sh directoryName/*ml
#
# Edit files in directory "directoryName" files "*ml"

thisDirectory=`pwd`
cd $thisDirectory

green="\e[1;32m"
end="\e[0m"

if [ ! "$1" ] ; then
  tes="$thisDirectory/*html"
else
  tes=$1
fi

sumfiles=`ls $thisDirectory/*html | wc -l`;

echo "Edit file \"$tes\" in directory \"$thisDirectory\""

sed -i 's/“/"/g' $tes
sed -i 's/”/"/g' $tes

sed -i 's/&nbsp;</</g' $tes

echo -e "\"“ ”\" ${green} Converted ${end}"

sed -i 's/<br>/<\/p><p>/g' $tes

sed -i 's/<p>/\n<p>/g' $tes
sed -i 's/<div/\n<div/g' $tes
sed -i 's/<img/\n<img/g' $tes
sed -i 's/<span/\n<span/g' $tes
sed -i 's/<\!--/\n<\!--/g' $tes

echo -e "New lines ${green} Converted ${end}"

sed -i 's/>&nbsp;/>/g' $tes
sed -i 's/&nbsp;</</g' $tes

echo -e "White start and end symbol ${green} Removed ${end}"

# sed -i 's/\ \ /\ /g' $tes
sed -i 's/​//g' $tes
sed -i 's/&nbsp;&nbsp;/\&nbsp;/g' $tes
sed -i 's/  /\ /g' $tes
sed -i 's/\ &nbsp;/\&nbsp;/g' $tes
sed -i 's/\&nbsp;\ /\&nbsp;/g' $tes

echo -e "2 white symbol ${green} Removed ${end}"

sed -i 's/ .\&nbsp;\ /.\&nbsp;/g' $tes

sed -i 's/\.\.\./…/g' $tes
sed -i 's/…\.\./…/g' $tes
sed -i 's/… \.\./…/g' $tes
sed -i 's/\.\.…/…/g' $tes
sed -i 's/…\./…/g' $tes
sed -i 's/\.…/…/g' $tes

echo -e "\"...\" to \"…\" ${green} Edited ${end}"

sed -i '/<p><\/p>/d' $tes
sed -i '/<p> <\/p>/d' $tes
sed -i '/<p>&nbsp;<\/p>/d' $tes

echo -e "Empty paragraf ${green} Removed ${end}"

sed -i 's/> <\/div>/>\n<\/div>/g' $tes
sed -i 's/><\/div>/>\n<\/div>/g' $tes

sed -i '/^<div*/d' $tes
sed -i '/<\/div>/d' $tes
sed -i '/^<span*/d' $tes
sed -i '/<\/span>/d' $tes
sed -i '/<\!--*/d' $tes

echo -e "Elements with div tag ${green} Removed ${end}"

sed -i 's/<big>//g' $tes
sed -i 's/<\/big>//g' $tes

sed -i '/^$/d' $tes

echo -e "Empty lines ${green} Removed ${end}"

sed -i 's/<hr class="wp-block-separator">/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
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

echo -e "To \"***\" element ${green} Converted ${end}"

sed -i 's/>-/>— /g' $tes
sed -i 's/>—/>— /g' $tes
sed -i 's/- / — /g' $tes

sed -i 's/\ \ /\ /g' $tes

echo -e "Files $sumfiles ${green} Edited ${end}"

