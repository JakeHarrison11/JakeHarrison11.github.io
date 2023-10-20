if [[ $(ls | grep .zip) ]]; then
    rm index.html
    rm -r */
    sleep 5
    zipfile=$(ls *.zip | head -n 1)
    unzip "$zipfile"
    rm "$zipfile"
    htmlfile=$(ls *.html | head -n 1)
    mv "$htmlfile" index.html
fi

git add --all
git commit -m "website change"
git push -u origin main
