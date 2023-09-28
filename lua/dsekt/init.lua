local dsekt = {}

local if_nil = vim.F.if_nil
local colors = require("dsekt.colors")

local config = {
    terminal_colors = if_nil(vim.g.terminal_colors, true),
}

local function set_hl(group, values)
    vim.api.nvim_set_hl(0, group, values)
end



dsekt.set_colorscheme = function()

    -- Neovim UI
    set_hl("Normal", {fg=colors.fg, bg=colors.bg})
    set_hl("Cursor", {fg=colors.bg, bg=colors.fg})
    set_hl("CursorLine", {bg=colors.bg2})
    set_hl("CursorLineNr", {fg=colors.str, bg=colors.bg})
    set_hl("CursorColumn", {bg=colors.bg2})
    set_hl("ColorColumn", {bg=colors.bg2})
    set_hl("FoldColumn", {fg=colors.comment, bg=colors.bg2})
    set_hl("SignColumn", {fg=colors.comment, bg=colors.bg2})
    set_hl("LineNr", {fg=colors.fg2, bg=colors.bg2})
    set_hl("CursorLineNr", {fg=colors.fg, bg=colors.bg2})
    set_hl("VertSplit", {fg=colors.fg3, bg=colors.bg3})
    set_hl("MatchParen", {fg=colors.warning2, underline=true})
    set_hl("StatusLine", {fg=colors.fg2, bg=colors.bg3, bold=true})
    set_hl("Pmenu", {fg=colors.fg, bg=colors.bg2})
    set_hl("PmenuSel", {bg=colors.bg3})
    set_hl("IncSearch", {fg=colors.bg, bg=colors.keyword})
    set_hl("Search", {underline=true})
    set_hl("Directory", {fg=colors.const})
    set_hl("Folded", {fg=colors.fg4, bg=colors.bg})
    set_hl("WildMenu", {fg=colors.str, bg=colors.bg})

    -- General syntax
    set_hl("Boolean", {fg=colors.const})
    set_hl("Character", {fg=colors.const})
    set_hl("Comment", {fg=colors.comment})
    set_hl("Conditional", {fg=colors.keyword})
    set_hl("Constant", {fg=colors.var})
    set_hl("Todo", {bg=colors.bg})
    set_hl("Define", {fg=colors.keyword})
    set_hl("DiffAdd", {fg="#fafafa", bg="#123d0f", bold=true})
    set_hl("DiffDelete", {bg=colors.bg2})
    set_hl("DiffChange", {fg="#fafafa", bg="#151b3c"})
    set_hl("DiffText", {fg="#ffffff", bg="#ff0000", bold=true})
    set_hl("ErrorMsg", {fg=colors.warning, bg=colors.bg2, bold=true})
    set_hl("WarningMsg", {fg=colors.fg, bg=colors.warning2})
    set_hl("Float", {fg=colors.const})
    set_hl("Function", {fg=colors.func})
    set_hl("Identifier", {fg=colors.var, italic=true})
    set_hl("Keyword", {fg=colors.keyword, bold=true})
    set_hl("Label", {fg=colors.var})
    set_hl("NonText", {fg=colors.bg4, bg=colors.bg2})
    set_hl("Number", {fg=colors.const})
    set_hl("Operator", {fg=colors.keyword})
    set_hl("PreProc", {fg=colors.keyword})
    set_hl("Special", {fg=colors.fg})
    set_hl("SpecialKey", {fg=colors.fg2, bg=colors.bg2})
    set_hl("Statement", {fg=colors.keyword})
    set_hl("StorageClass", {fg=colors.type, italic=true})
    set_hl("String", {fg=colors.str})
    set_hl("Tag", {fg=colors.keyword})
    set_hl("Title", {fg=colors.fg, bold=true})
    set_hl("Todo", {fg=colors.bg, bg=colors.fg2, bold=true})
    set_hl("Type", {fg=colors.type})
    set_hl("Underlined", {underline=true})

    -- Neovim terminal mode
    if config.terminal_colors then
        vim.g.terminal_color_0 = colors.bg
        vim.g.terminal_color_1 = colors.warning
        vim.g.terminal_color_2 = colors.keyword
        vim.g.terminal_color_3 = colors.bg4
        vim.g.terminal_color_4 = colors.func
        vim.g.terminal_color_5 = colors.builtin
        vim.g.terminal_color_6 = colors.fg3
        vim.g.terminal_color_7 = colors.str
        vim.g.terminal_color_8 = colors.bg2
        vim.g.terminal_color_9 = colors.warning2
        vim.g.terminal_color_10 = colors.fg2
        vim.g.terminal_color_11 = colors.var
        vim.g.terminal_color_12 = colors.type
        vim.g.terminal_color_13 = colors.const
        vim.g.terminal_color_14 = colors.fg4
        vim.g.terminal_color_15 = colors.comment
    end

    -- Ruby highlighting
    set_hl("rubyAttribute", {fg=colors.builtin})
    set_hl("rubyLocalVariableOrMethod", {fg=colors.var})
    set_hl("rubyGlobalVariable", {fg=colors.var, italic=true})
    set_hl("rubyInstanceVariable", {fg=colors.var})
    set_hl("rubyKeyword", {fg=colors.keyword})
    set_hl("rubyKeywordAsMethod", {fg=colors.keyword, bold=true})
    set_hl("rubyClassDeclaration", {fg=colors.keyword, bold=true})
    set_hl("rubyClass", {fg=colors.keyword, bold=true})
    set_hl("rubyNumber", {fg=colors.const})

    -- Python highlighting
    set_hl("pythonBuiltin", {fg=colors.builtin})

    -- Javascript highlighting
    set_hl("jsBuiltins", {fg=colors.builtin})
    set_hl("jsFunction", {fg=colors.keyword, bold=true})
    set_hl("jsGlobalObjects", {fg=colors.type})
    set_hl("jsAssignmentExps", {fg=colors.var})

    -- Html Highlighting
    set_hl("htmlLink", {fg=colors.var, underline=true})
    set_hl("htmlStatement", {fg=colors.keyword})
    set_hl("htmlSpecialTagName", {fg=colors.keyword})

    -- Markdown Highlighting
    set_hl("mkdCode", {fg=colors.builtin})

end

return dsekt