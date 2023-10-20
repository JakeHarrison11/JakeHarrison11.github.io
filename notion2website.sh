# Find the first ZIP file
zipfile=$(ls *.zip | head -n 1)

# Unzip it
unzip "$zipfile"

# Remove it
rm "$zipfile"

htmlfile=$(ls *.html | head -n 1)

mv "$htmlfile" index.html

git add --all

git commit -m "website change"

git push -u origin main