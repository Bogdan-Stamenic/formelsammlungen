#~bash

file="$1.tex"
customize="customize_$1.tex"

cp template.tex $file
cp customize/customize_template.tex customize/$customize
sed -i "s/customize_template.tex/customize_$1.tex/" $file
