#!/bin/bash

scale=3

for x in $(ls *.png); do

	s=$(file $x | awk '{print $5}')
	b=$(echo "$s/$scale" | bc)
	$(convert $x  -resize $b ../$x)
done
