#/bin/bash

# extract all topics of the guideline
# a topic is a header (# in markdown) with the pattern <SHORT>: <LONG>
#
# the <SHORT> path can be used to extract all rule of that topic

if [ $# -ne 1 ]; then
    echo "Usage: $0 CppCoreGuidelines.md"
    echo
    echo "Provide a filename for the guidelines."
    exit -1
fi

egrep -h -e '\# <a name="(.+)"></a>(\w+): (\w+)' $1 | sed -ne '1,22p'
