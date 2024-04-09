#!/bin/bash

for sae in md/S*.md
do
    name=$(basename $sae ".md")
    pandoc --template ./pandoc/eisvogel/eisvogel.pandoc \
           --variable geometry:margin=1cm --variable pagestyle=empty \
           $sae \
           --output $name.pdf
done
