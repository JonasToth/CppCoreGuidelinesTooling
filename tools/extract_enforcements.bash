#!/bin/bash

# extract a enforcement rule from a specific area
# 
# for example, extract the enforcement between line 2016 and 2069

if [ $# -ne 3 ]; then
    echo "Usage: $0 GuidelineFile startline endline"
    echo
    echo "Provide correct number of lines. Not end with a $"
    exit -1
fi
