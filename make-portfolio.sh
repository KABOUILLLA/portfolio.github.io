#!/bin/bash

pandoc --template ./eisvogel/eisvogel.pandoc \
       --resource-path=.:md \
       --top-level-division=chapter \
       --listings \
       --lua-filter=gitlab-math.lua \
       md/metadata.md md/[0-9]*.md \
       --output sae-s301-2023-2024.pdf
