#~bash

file="$1.tex"
settings="$1_settings.tex"

cp template.tex $file
cp settings/settings_template.tex settings/$settings
sed -i "s/settings_template.tex/$1_settings.tex/" $file
