#!/bin/bash

# call from guideline directory
# create a summary link file referencing all rules in a topic


while read line
do
    if [ -d "$line" ]; then
        # create the link summary for all rules in that topic
        echo "Creating link summary for $line"
        cd "$line"
        ../../tools/extract_linksummary.bash ../CppCoreGuidelines.md "$line" > links.md
        cd ..

    else
        echo "Topic does not exist!" 2>&1
    fi
done < "${1:-/dev/stdin}"
