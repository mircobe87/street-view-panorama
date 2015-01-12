#!/bin/bash

function closeHTTPServer() {
	pkill -f "python -m SimpleHTTPServer"
	exit 0
}

python -m SimpleHTTPServer &> /dev/null &
xdg-open "http://localhost:8000" &> /dev/null

trap "closeHTTPServer" 2

echo "Inderisci l'ID del panorama:"
read panoid

#panoid="$1"

mkdir panorama
cd panorama

curl http://cbk0.google.com/cbk?output=tile\&panoid=$panoid\&zoom=5\&x=[0-25]\&y=[0-12] -o "#2-#1-tile.jpg"

for f in $( ls ?-* ); do
	mv "$f" "0$f";
done

for f in $( ls ??-?-* ); do
	mv "$f" "${f:0:3}${f/??-/0}";
done

montage -geometry 64x64 -tile 26x13 *-tile.jpg pano.jpg
cp pano.jpg ../

cd ..

xdg-open pano.jpg
closeHTTPServer

exit 0