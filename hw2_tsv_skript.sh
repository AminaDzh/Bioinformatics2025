#!/bin/bash

for file in *.tsv; do
	if [ -f "$file" ]; then
		directory_name="${file%.tsv}"
		mkdir "$directory_name"
		mv "$file" "$directory_name"
		echo "File '$file' moved in '$directory_name/'"
	fi
done
