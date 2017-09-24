#!/bin/sh


RULES=$(cat *.md | grep '#' | wc -l)
NO_ENFORCEMENT=$(cat *.md | grep 'no enforcement' | wc -l)
ENFORCED=$(($RULES-$NO_ENFORCEMENT))

echo "number of rules: \t\t\t$RULES"
echo "number of enforced rules:\t\t$ENFORCED"
echo "number of rules without enforcement:\t$NO_ENFORCEMENT"
