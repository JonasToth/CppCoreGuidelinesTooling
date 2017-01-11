#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 Guidelines TopicShortcut"
    echo
    echo "Provide correct number of arguments"
    exit -1
fi

# get the correct script name no matter from where the script got called
number_script=$(echo "$0" | sed -e "s/create_topic_rules/extract_rule_numbers/g")
heading_script=$(echo "$0" | sed -e "s/create_topic_rules/extract_rules/g")
enforcement_script=$(echo "$0" | sed -e "s/create_topic_rules/extract_enforcements/g")

if [ ! -d $2 ]; then
    echo "Topic directory does not exist!" 2>&1
    exit -1
else
    cd "$2"
    rule_headings=$(eval "../$heading_script" "../$1" "$2")
    rule_numbers=$(eval "../$number_script" "../$1" "$2")

    # write the heading in a file name rule_nbr
    while read rule_nbr
    do
        echo "$rule_headings" | sed -ne "/$2\.${rule_nbr}:/p" > ${rule_nbr}
        echo "" >> ${rule_nbr}
    done <<< "$rule_numbers"
    cd ..
fi
