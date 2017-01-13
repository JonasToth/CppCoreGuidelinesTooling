#/bin/bash

# create a subdirectory in repo/guideline for each topic the guidelines adress
#
# !!! must be called from within guideline !!!
# 
# topics are extracted via extract_topics.bash and piped into this script
# the script DOES NOT CHANGE INTO THE CORRECT DIRECTORY. it must be called from within
# the guideline dir.
#
# it will check for each line (topic) if a directory exists and create it if not existing

topic_script=$(echo $0 | sed -e 's/create_topic_directories/extract_topics/g')
eval "$topic_script CppCoreGuidelines.md" | 
while read line
do
    echo "Creating directory for topic $line"
    mkdir -p "$line"
    mkdir -p "../clang-tidy/$line"
done 
