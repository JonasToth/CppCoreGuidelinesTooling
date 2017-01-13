#!/bin/bash

# merge a rule enforcement with the tool comment
# e.g. write how clang implements the enforcement in another file, merging these two
# files

outfile="../complete.md"
topic_script=$(echo $0 | sed -e 's/merge_rule/extract_topics/g')

echo > $outfile

eval "$topic_script CppCoreGuidelines.md" |
while read topic
do
    echo >> $outfile
    cat "$topic/links.md" >> $outfile
done


eval "$topic_script CppCoreGuidelines.md" |
while read topic
do
    echo "# $topic" >> $outfile
    cat "$topic/links.md" >> $outfile

    cd "$topic"

    eval "ls -1 | sed -e '/links.md/d'" |
    while read rule
    do
        cat "$rule" >> "../$outfile"

        echo "#### clang-tidy" >> "../$outfile"
        cat "../../clang-tidy/$topic/$rule" >> "../$outfile"
    done

    cd ..
done
