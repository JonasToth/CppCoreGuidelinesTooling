#!/bin/sh

enforcement_statistics() {
    # count the number of big headings, these are enforceable rules
    RULES=$(grep '# ' "$1" | wc -l)
    # count the number of 'no enforcement' comments in the document
    NO_ENFORCEMENT=$(grep 'no enforcement' "$1" | wc -l)
    # calculate the difference between enforced and not enforced
    ENFORCED=$(($RULES-$NO_ENFORCEMENT))

    PERCENTAGE=$(echo "scale=2; 100. * $ENFORCED / $RULES" | bc)
    echo "/done/todo/enforceable/ (/$ENFORCED/$NO_ENFORCEMENT/$RULES/) $PERCENTAGE% done"
    echo
}

# create a temporary md file, with all sections contained. Used for the total statistics.
cat *.md > temp_all.md

echo "=== Total statistics"
enforcement_statistics "temp_all.md"

# remove the temporary file to not polute everything
rm temp_all.md

for file in [a-z_]*.md
do
    echo "== $file statistics"
    enforcement_statistics $file
done
