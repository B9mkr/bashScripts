#! /bin/bash

green="\e[1;32m"
yellow="\e[1;33m"
end="\e[0m"

tes="/tmp/tmpForTextToHtml"
xclip -selection clipboard -o > $tes

echo -e "\t${yellow}Start editing${end}"

sed -i '/^$/d' $tes

# echo "removed empty lines"

sed -i 's/^/<p>/' $tes
sed -i 's/$/<\/p>/' $tes
# echo "add <p> tag for every lines"

# sed -i 's/^[[:space:]]*//g' $tes

sed -i 's/-\ /—\ /g' $tes
# echo "editing - to —"

sed -i 's/<p>\*\*\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>\*<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
sed -i 's/<p>•\ \ •\ \ •<\/p>/\n<h5 class="center">\*\*\*<\/h5>/g' $tes
# sed -i 's/\*\*\*/<h5 class="center">***<\/h5>/g' $tes

sed -i 's/\.\.\./…/g' $tes
sed -i 's/…\.\./…/g' $tes
sed -i 's/… \.\./…/g' $tes
sed -i 's/\.\.…/…/g' $tes
sed -i 's/…\./…/g' $tes
sed -i 's/\.…/…/g' $tes

# ---

sed -i 's/ </</g' $tes
sed -i 's/> />/g' $tes

# sed -i 's/  /\ /g' $tes

# sed -i 's/>«/>\ — /g' $tes
# sed -i 's/>-«/>\ — /g' $tes
# # sed -i 's/\ — «/ — /g' $tes
# sed -i 's/— «/ — /g' $tes
# sed -i 's/ «/ — /g' $tes

# sed -i 's/»</</g' $tes
# sed -i 's/» — / — /g' $tes
# sed -i 's/»— / — /g' $tes
# sed -i 's/»- / — /g' $tes
# sed -i 's/» / — /g' $tes

# sed -i 's/».</.</g' $tes
# sed -i 's/.», —/. —/g' $tes
# sed -i 's/,». —/. —/g' $tes
# sed -i 's/.»,—/. —/g' $tes
# sed -i 's/,».—/. —/g' $tes
# sed -i 's/», —/, —/g' $tes
# sed -i 's/»,—/, —/g' $tes

# sed -i 's/ – — / — /g' $tes

sed -i '/<p> <\/p>/d' $tes
sed -i '/<p><\/p>/d' $tes

xclip -selection clipboard $tes

echo -e "\t${green}Finish editing${end} text in html and copy to clipboard"

headFile=`head -n 1 $tes`
tailFile=`tail -n 1 $tes`

echo "Result: \"$headFile ... $tailFile\""

