#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 Guidelines"
    echo
    echo "Provide correct number of arguments"
    exit -1
fi

# get the correct script name no matter from where the script got called
number_script=$(echo "$0" | sed -e "s/create_topic_rules/extract_rule_numbers/g")
heading_script=$(echo "$0" | sed -e "s/create_topic_rules/extract_rules/g")
enforcement_script=$(echo "$0" | sed -e "s/create_topic_rules/extract_enforcements/g")
topic_script=$(echo $0 | sed -e 's/create_topic_rules/extract_topics/g')

eval "$topic_script CppCoreGuidelines.md" |
while read topic
do
    cd "$topic"
    echo "$topic"
    rule_headings=$(eval "../$heading_script" "../$1" "$topic")
    rule_numbers=$(eval "../$number_script" "../$1" "$topic")

    # write the heading in a file name rule_nbr
    while read rule_nbr
    do
        # find the relevant rule for this number and topic
        rule_line=$(echo "$rule_headings" | sed -ne "/$topic\.${rule_nbr}:/p") 

        # extract the linenbr to search the enforcement afterwards
        rule_occurence_line=$(echo "$rule_line" | sed -e "s/\(:#.*\)//g")
        rule_line=$(echo "$rule_line" | sed -e "s/$rule_occurence_line://g")

        echo "$rule_line"
        echo $rule_occurence_line

        # output the heading, removing the linenbr from the rule_line
        echo "$rule_line" > ${rule_nbr}
        echo "" >> ${rule_nbr} 
        
        # insert enforcement
        eval "../$enforcement_script ../$1 $rule_occurence_line" >> ${rule_nbr}
    done <<< "$rule_numbers"

    cd ..
done
