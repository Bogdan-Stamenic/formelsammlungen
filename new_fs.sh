#~bash

DEFAULT_FILE="fs.tex"
DEFAULT_TITLE="I bims eine Formelsammlung"
DEFAULT_AUTHOR="Bogdan Stamenic"

## Read filename from stdin
read -t 30 -p "Enter filename (with .tex | default: $DEFAULT_FILE): " FILE
if  [ "$FILE" != "" ]
then
	cp template.tex $FILE
else
	FILE=$DEFAULT_FILE
	cp template.tex $FILE
fi


## Read title from stdin
read -t 30 -p "Enter title of Formelsammlung (default: $DEFAULT_TITLE): " TITLE
if  [ "$TITLE" != "" ]
then
	sed -i "s/title_of_formelsammlung/$TITLE/" $FILE
else
	sed -i "s/title_of_formelsammlung/$DEFAULT_TITLE/" $FILE
fi


## Read author from stdin
read -t 30 -p "Enter name of Author (default: $DEFAULT_AUTHOR): " AUTHOR
if  [ "$AUTHOR" != "" ]
then
	sed -i "s/name_of_author/$AUTHOR/" $FILE
else
	sed -i "s/name_of_author/$DEFAULT_AUTHOR/" $FILE
fi

unset FILE TITLE AUTHOR DEFAULT_FILE DEFAULT_TITLE DEFAULT_AUTHOR
exit 0
