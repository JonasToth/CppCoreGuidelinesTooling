#!/bin/bash

# merge a rule enforcement with the tool comment
# e.g. write how clang implements the enforcement in another file, merging these two
# files

outfile="../tool_overview.md"
topic_script=$(echo $0 | sed -e 's/merge_rule/extract_topics/g')

cat ../clang-tidy/preface.md > $outfile

eval "$topic_script CppCoreGuidelines.md" |
while read topic
do
    echo >> $outfile
    echo "# $topic" >> $outfile
    cat "$topic/links.md" >> $outfile
done


eval "$topic_script CppCoreGuidelines.md" |
while read topic
do
    echo "## $topic" >> $outfile
    cat "$topic/links.md" >> $outfile

    cd "$topic"

    eval "ls -1 | sed -e '/links.md/d'" |
    while read rule
    do
        cat "$rule" >> "../$outfile"

        # make a section for each tool we track
        if [[ $(wc -l ../../clang-tidy/$topic/$rule | awk '{ print $1 }') -eq 0 ]]
        then
            continue
        else
            echo "#### clang-tidy" >> "../$outfile"
            cat "../../clang-tidy/$topic/$rule" >> "../$outfile"

            echo >> "../$outfile"
        fi
    done

    cd ..
done
