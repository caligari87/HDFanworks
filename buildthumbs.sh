#!/bin/bash

cd temp/

for F in *.*
do
	convert "$F" -format jpg -resize 'x300>' ../thumbs/"${F%%.*}".jpg
done