#!/bin/bash

# the whole process to update the guidelines, get all rules, topics and so on
# and create the files for them.
# this shall be used as a cronjob
#
# call from guideline directory

../tools/get_guidelines.bash

../tools/create_topic_directories.bash 
../tools/create_topic_summaries.bash 
../tools/create_topic_rules.bash CppCoreGuidelines.md

../tools/merge_rule.bash


