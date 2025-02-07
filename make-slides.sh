#!/bin/bash

pandoc --template ./pandoc/metropolis/metropolis.pandoc \
       --resource-path=.:md \
       --slide-level=3 \
       --lua-filter=pandoc/gitlab-math.lua \
       md/metadata.md md/C*.md \
       --to beamer \
       --output portfolio-slides.pdf
