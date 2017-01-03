#!/bin/bash

# extract the header of a topic containg the hyperlink to all rules
# 
# the overview for tooling support should contain these as well, since navigation
# and linking gets way better

if [ $# -ne 2 ]; then
    echo "Usage: $0 Guidelines TopicShortcut"
    echo
    echo "Provide correct number of arguments"
    exit -1
fi

egrep -e "\* \[$2\.[[:digit:]]+:.*\(.*\)" $1 
