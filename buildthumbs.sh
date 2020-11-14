#!/bin/bash

cd temp/

for F in *.*
do
	convert "$F" -format jpg -resize 'x300>' ../thumbs/"${F%%.*}".jpg
	mv $F ../images
	echo "<a href=\"images/$F\"><img class=\"thumb\" src=\"thumbs/${F%%.*}.jpg\"></a>"
done