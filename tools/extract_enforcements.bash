#!/bin/bash

# extract a enforcement rule from a specific area
# 
# for example, extract the enforcement between line 2016 and 2069

if [ $# -ne 2 ]; then
    echo "Usage: $0 GuidelineFile startline"
    echo
    echo "Provide correct number of lines. Not end with a $"
    exit -1
fi

# https://stackoverflow.com/questions/1187354/excluding-first-and-last-lines-from-sed-start-end
# relative to startline ($2)
echo "Determine startline of enforcement"
enforcement_start_line=$(sed -ne "$2,\$p" $1 | egrep -hn -e '#### Enforcement')
absolut_start_line=$(($2+$enforcement_start_line))
echo "$enforcement_start_line"
echo "$absolut_start_line"

exit -1
echo "determine endline of enforcement"
# determine the end, meaning the next headline
relative_end_line=$(sed -ne "$absolut_start_line,\$p" $1 | egrep -hn -e '^#+ .*$')
absolute_end_line=$(($absolut_start_line+$relative_end_line))
echo "$absolute_end_line"

#sed -ne "$absolut_start_line,${absolut_end_line}" $1 | egrep -hn -e '^#+ .*$'

#| sed -ne "/^##### Enforcement/,\${/^#\+ .*\$/{p}}" #| head --lines=-1
