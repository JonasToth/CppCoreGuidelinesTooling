#!/bin/bash

# this scripts adds a file in all tool directories if there is an enforcemnt for a rule
#
# this means, if a rule file has more then 2 lines, there is an enforcement section

topic_script=$(echo $0 | sed -e 's/add_rule_tool/extract_topics/g')

eval "$topic_script CppCoreGuidelines.md" |
while read topic
do
    if [ ! -d "$topic" ]; then
        cd "$topic"

        # for each rule file, that has more then 2 lines, touch a file in the tool
        ls -1 | sed -e '/links.md/d' |
        while read rule
        do
            # check for line number
            if [[ $(wc -l "$rule" | sed -ne 's/\(.*\) .*/\1/pg') -gt 2 ]]; then
                touch "../../clang_tidy/$rule"
            fi
        done

        cd ..
    fi
done
