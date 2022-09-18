#!/bin/bash
mkdir -p output
for filename in $(ls .);do 
	if [[ $filename == *.txt ]]
	then
		cp $filename submission.json; 
		extension="${filename##*.}";
		filename="${filename%.*}";
		zip output/$filename.zip submission.json;
		rm submission.json; 
	fi
done