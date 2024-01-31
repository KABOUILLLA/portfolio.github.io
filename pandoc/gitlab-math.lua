-- Lua Filter converting GitLab math to Pandoc math.
-- Copyright (c) 2019-2022 - Romain WALLON, released under MIT license.

function Math(math)
    if math.c and math.c[1] == "InlineMath" or math.mathtype == "InlineMath"
    then
        -- Removing the backquotes required by GitLab.
        return pandoc.Math("InlineMath", math.text:gsub("`", ""))
    end
end

function CodeBlock(block)
    if block.classes[1] == "math"
    then
        -- Converting this code block to display math.
        return pandoc.Para{ pandoc.Math("DisplayMath", block.text) }
    end

    -- This code block is left as is.
    return block
end
