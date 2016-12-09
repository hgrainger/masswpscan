#!/bin/ksh
file="output.txt"
while IFS= read line
do
	wpscan --url "$line" --follow-redirection --log
done <"$file"
