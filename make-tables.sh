#!/bin/bash

for sae in sae/S*.md
do
    name=$(basename $sae ".md")
    pandoc --template ./pandoc/eisvogel/eisvogel.pandoc \
           --variable geometry:margin=1cm --variable pagestyle=empty \
           $sae \
           --output $name.pdf
done
