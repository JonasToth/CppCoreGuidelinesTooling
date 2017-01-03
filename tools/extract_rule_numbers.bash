#/bin/bash

# extract the number for each existing rule.
# this will function as the filename for each rule allowing file based annotations for
# each one and automatic updating and so on.
# 
# uses extract_linksummary.bash as a base

if [ $# -ne 2 ]; then
    echo "Usage: $0 Guidelines TopicShortcut"
    echo
    echo "Provide correct number of arguments"
    exit -1
fi

# get the correct script name no matter from where the script got called
summary_script=$(echo "$0" | sed -e "s/rule_numbers/linksummary/g")
eval "$summary_script $1 $2" | sed -ne "s/\* \[$2\.\(\w\w*\):.*/\1/pg"
