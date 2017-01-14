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

#egrep -hn -e '\#+ <a name="(.+)"></a>(\w+): (\w+)' $1 | sed -ne '1,22p'

# extract all links (see extract_linksummary.bash), get the shortcut for it
# sort it, make uniq
# this means only one line is left for each topic
topics=$(sed -nre "s/\* \[(\w+)\.(.*)\].*/\1/pg" $1 | sort | uniq)

# remove known false results and trim whitespace (R has)
echo "$topics" | sed -e '/RS/d' -e '/RF/d' -e '/Geosoft/d' -e '/isocpp/d' -e '/Possibility/d' -e '/A/d' | sed -e 's/^[[:space:]]*//'
