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


# loop over the text until there is a r'#+ Enforcement' line
line_nbr=$((0))
while read line; do
    if [[ $line_nbr -gt $2 ]]; then
        if [[ "$line" =~ "# Enforcement" ]]; then
            start_line=${line_nbr}
            break
        fi
    fi
    line_nbr=$((line_nbr + 1))
done < $1

start_line=$((start_line + 2))

# output each line following from here until we reach a headline
sed -ne $start_line,\$p $1 | 
while read line; do
    if [[ "$line" =~ "#" ]]; then
        break
    fi
    echo "$line"
done 

