#!/bin/bash

DEFAULT_TITLE="I bims eine Formelsammlung"
DEFAULT_AUTHOR="Bogdan Stamenic"

highlight_print() {
	echo ""
	echo "=== $1 ==="
	echo ""
}

## Read short-form name from stdin
read -t 30 -p "> Enter short-form name of FS: " SHORT
if [[ -z "$SHORT" ]]; then
	highlight_print "ERROR: must enter short-form name"
	unset DEFAULT_AUTHOR DEFAULT_TITLE
else
	FILE="${SHORT}_fs.tex"
	echo "FILE=$FILE"

	## Create base tex-file
	cp template.tex $FILE


	## Make directories for content
	mkdir -vp content/$SHORT content/$SHORT/pictures
	highlight_print "INFO: Makefile entry for $FILE must be manually added to Makefile"


	## Read title from stdin
	read -t 30 -p "> Enter title of Formelsammlung (default: $DEFAULT_TITLE): " TITLE
	if  [[ -z  "$TITLE" ]]; then
		sed -i "s/TitleOfFormelsammlung/$DEFAULT_TITLE/" $FILE
	else
		sed -i "s/TitleOfFormelsammlung/$TITLE/" $FILE
	fi


	## Read author from stdin
	read -t 30 -p "> Enter name of Author (default: $DEFAULT_AUTHOR): " AUTHOR
	if  [[ -z  "$AUTHOR" ]]; then
		sed -i "s/NameOfAuthor/$DEFAULT_AUTHOR/" $FILE
	else
		sed -i "s/NameOfAuthor/$AUTHOR/" $FILE
	fi

	unset TITLE AUTHOR SHORT FILE DEFAULT_TITLE DEFAULT_AUTHOR
fi


