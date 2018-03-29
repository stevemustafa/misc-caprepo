#!/bin/bash

files=$(ls *.yaml)

for file in $files
do
        sed -Ei 's/:[[:xdigit:]]+/:latest/' $file
done

# this would need to be run in the folder that hosts that yaml files that comprise the helm charts, typically the templates folder.
# this is specifically to fit the need of the offline repo
