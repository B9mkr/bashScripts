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

sed -i 's/<br>/<\/p><p>/g' $tes

sed -i 's/<p>/\n<p>/g' $tes
sed -i 's/<div/\n<div/g' $tes
sed -i 's/<img/\n<img/g' $tes
sed -i 's/<span/\n<span/g' $tes
sed -i 's/<\!--/\n<\!--/g' $tes

# echo "new lines"

sed -i 's/>&nbsp;/>/g' $tes
sed -i 's/&nbsp;</</g' $tes

# echo "remove white start and end symbol"

# sed -i 's/\ \ /\ /g' $tes
sed -i 's/  /\ /g' $tes
sed -i 's/\ &nbsp;/\&nbsp;/g' $tes
sed -i 's/\&nbsp;\ /\&nbsp;/g' $tes

# echo "remove 2 white symbol"

sed -i 's/ .\&nbsp;\ /.\&nbsp;/g' $tes

sed -i 's/\.\.\./…/g' $tes
sed -i 's/…\.\./…/g' $tes
sed -i 's/… \.\./…/g' $tes
sed -i 's/\.\.…/…/g' $tes
sed -i 's/…\./…/g' $tes
sed -i 's/\.…/…/g' $tes

echo "edited \"...\" to \"…\""

sed -i '/<p><\/p>/d' $tes
sed -i '/<p> <\/p>/d' $tes
sed -i '/<p>&nbsp;<\/p>/d' $tes

# echo "removed empty paragraf"

sed -i 's/> <\/div>/>\n<\/div>/g' $tes
sed -i 's/><\/div>/>\n<\/div>/g' $tes

sed -i '/^<div*/d' $tes
sed -i '/<\/div>/d' $tes
sed -i '/^<span*/d' $tes
sed -i '/<\/span>/d' $tes
sed -i '/<\!--*/d' $tes

# echo "remove element with div tag"

sed -i 's/<big>//g' $tes
sed -i 's/<\/big>//g' $tes

sed -i '/^$/d' $tes

# echo "removed empty lines"

sed -i 's/<hr class="wp-block-separator">/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>__________<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>◆<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>◇<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\*\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\*\*\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\*\*\*\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\* \* \*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes

# echo "edited \"***\" lines"

sed -i 's/>-/>— /g' $tes
sed -i 's/- / — /g' $tes

sed -i 's/  /\ /g' $tes

echo -e "files $sumfiles ${green} edited ${end}"

