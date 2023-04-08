#!/bin/bash

cd temp/

for F in *.*
do
	FT=jpg
	if [[ $F == *.gif ]]
	then
		FT=gif
		echo "caught gif"
	fi
	convert "$F" -format $FT -resize 'x300>' ../thumbs/"${F%%.*}".$FT
	mv $F ../images
	echo "<a href=\"images/$F\"><img class=\"thumb\" src=\"thumbs/${F%%.*}.$FT\"></a>"
done
