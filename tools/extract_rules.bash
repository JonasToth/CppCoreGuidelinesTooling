#!/bin/bash

# extract all rule of a specific topic
# the topic is given as it shortcut, like SF for sourcefiles.

if [ $# -lt 2 ]; then
    echo "Usage: $0 <GuidelineFile> <SHORTCUTS...>"
    echo
    echo "Provide wrong count of arguments!"
    exit -1
fi

FILE=$1

shift

for SHORTCUT in $@; do
    echo "extracting for $SHORTCUT"
    # matching following kind of line
    # * [SF.8: Use `#include` guards for all `.h` files](#Rs-guards)
    egrep -e "### <a name=\"(.+)\"></a>$SHORTCUT.([[:digit:]]+): (.*)" $FILE
done
