#!/bin/bash

pandoc --template ./pandoc/eisvogel/eisvogel.pandoc \
       --resource-path=.:md \
       --top-level-division=chapter \
       --listings \
       --lua-filter=pandoc/gitlab-math.lua \
       md/metadata.md md/C*.md \
       --output portfolio.pdf
