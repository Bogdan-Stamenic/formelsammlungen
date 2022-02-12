#!/bin/bash

DEFAULT_SHORT="fs"
DEFAULT_TITLE="I bims eine Formelsammlung"
DEFAULT_AUTHOR="Bogdan Stamenic"

### Read filename from stdin
#read -t 30 -p "Enter filename (with .tex | default: $DEFAULT_FILE): " FILE
#if  [ "$FILE" != "" ]
#then
#	cp template.tex $FILE
#else
#	FILE=$DEFAULT_FILE
#	cp template.tex $FILE
#fi

## Read short-form name from stdin
read -t 30 -p "Enter short-form name of FS (default: $DEFAULT_SHORT): " SHORT
if  [ "$SHORT" != "" ]
then
	SHORT=$DEFAULT_SHORT
fi
## Create base tex-file
cp template.tex ${SHORT}_fs.tex

## Make directories for content
mkdir -vp content/$SHORT content/$SHORT/pictures
echo "\n=== Makefile entry for ${SHORT}_fs.tex must be manually added to Makefile===\n"


## Read title from stdin
read -t 30 -p "Enter title of Formelsammlung (default: $DEFAULT_TITLE): " TITLE
if  [ "$TITLE" != "" ]
then
	sed -i "s/TitleOfFormelsammlung/$TITLE/" $FILE
else
	sed -i "s/TitleOfFormelsammlung/$DEFAULT_TITLE/" $FILE
fi


## Read author from stdin
read -t 30 -p "Enter name of Author (default: $DEFAULT_AUTHOR): " AUTHOR
if  [ "$AUTHOR" != "" ]
then
	sed -i "s/NameOfAuthor/$AUTHOR/" $FILE
else
	sed -i "s/NameOfAuthor/$DEFAULT_AUTHOR/" $FILE
fi

unset TITLE AUTHOR SHORT DEFAULT_TITLE DEFAULT_AUTHOR DEFAULT_SHORT
exit 0
