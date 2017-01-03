#/bin/bash

# create a subdirectory in repo/guideline for each topic the guidelines adress
# 
# topics are extracted via extract_topics.bash and piped into this script
# the script DOES NOT CHANGE INTO THE CORRECT DIRECTORY. it must be called from within
# the guideline dir.
#
# it will check for each line (topic) if a directorie exists and create it if not existing

# use with input file or pipe

while read line
do
    if [ ! -d "$line" ]; then
        echo "Creating directory for topic $line"
        mkdir "$line"
    fi
done < "${1:-/dev/stdin}"
