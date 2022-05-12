#! /bin/bash

tes="$1"

# sed -i 's/<div class="reader-container container container_center read-aloud">//g' $tes
# sed -i 's/<div class="reader-container container container_center">//g' $tes
# sed -i 's/\ \ /\ /g' $tes


sed -i 's/><\/div>/>/g' $tes

sed -i 's/<body>//g' $tes
sed -i 's/<\/body>//g' $tes

sed -i '/<html/d' $tes
sed -i 's/<\/html>//g' $tes

sed -i '/<title/d' $tes

sed -i '/<link/d' $tes

sed -i '/<?xml/d' $tes

sed -i 's/<head>//g' $tes
sed -i 's/<\/head>//g' $tes


sed -i '/^$/d' $tes


sed -i 's/<h5 class="center">\*\*\*<\/h5>/\n---/g' $tes

sed -i 's/<p>/\n/g' $tes
sed -i 's/<\/p>//g' $tes

sed -i 's/<h1>/\n# /g' $tes
sed -i 's/<\/h1>//g' $tes

sed -i 's/<h2>/\n## /g' $tes
sed -i 's/<\/h2>//g' $tes

sed -i 's/<h3>/\n### /g' $tes
sed -i 's/<\/h3>//g' $tes

sed -i 's/<h4>/\n#### /g' $tes
sed -i 's/<\/h4>//g' $tes

sed -i 's/<h5>/\n##### /g' $tes
sed -i 's/<\/h5>//g' $tes


