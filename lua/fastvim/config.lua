-- *******************************************************************************
-- Name        : fastvim
-- Description : Carefully crafted colorscheme for neovim in Lua, using arctic studio's palette choosing the warmer colors.
-- Author      : @BrunoCiccarino https://github.com/BrunoCiccarino
-- Website     : https://github.com/BrunoCiccarino/fastvim-nvim
-- License     : GPL-3
-- Year        : 2024
-- ********************************************************************************


local C = {}
local colors = require("fastvim.colors")

C.default = {
    brighter_comments = false,
    brighter_conditionals = true,
    italic_comments = false,
    transparent = false,
}

local function apply_italicized_comments(syntax)
    syntax.Comment.italic = true
end

local function apply_brighter_comments(syntax)
    syntax.Comment.fg = "#707788"
end

local function apply_brighter_conditionals(syntax)
    syntax.Boolean.fg = colors.aurora.yellow
end

local function apply_transparent_background(base)
    local highlight_groups = {
        "Normal",
        "NormalFloat",
        "FloatBorder",
        "FloatTitle",
        "WinBarNC",
        "WinBar",
        "TermNormal",
        "StatusLine",
        "StatusLineNC",
        "TabLine",
        "TabLineFill",
        "TabLineSel",
        "SignColumn",
    }

    for _, group in ipairs(highlight_groups) do
        base[group].bg = colors.none
    end
end

function C.apply_config(highlights, opts)
    if opts then
        if opts.italic_comments then
            apply_italicized_comments(highlights.syntax)
        end

        if opts.brighter_comments then
            apply_brighter_comments(highlights.syntax)
        end

        if opts.transparent then
            apply_transparent_background(highlights.gui)
        end

        if opts.brighter_conditionals then
            apply_brighter_conditionals(highlights.syntax)
        end
    end
end

return C
