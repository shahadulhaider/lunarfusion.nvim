local M = {}

local function highlight(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.set_highlights(colors)
	-- Syntax highlighting
	highlight("Normal", { fg = colors.fg, bg = colors.bg })
	highlight("Comment", { fg = colors.gray, italic = true })
	highlight("Constant", { fg = colors.cyan })
	highlight("String", { fg = colors.green })
	highlight("Character", { fg = colors.green })
	highlight("Number", { fg = colors.orange })
	highlight("Boolean", { fg = colors.orange })
	highlight("Float", { fg = colors.orange })
	highlight("Identifier", { fg = colors.blue })
	highlight("Function", { fg = colors.blue })
	highlight("Statement", { fg = colors.purple })
	highlight("Conditional", { fg = colors.purple })
	highlight("Repeat", { fg = colors.purple })
	highlight("Label", { fg = colors.purple })
	highlight("Operator", { fg = colors.purple })
	highlight("Keyword", { fg = colors.purple })
	highlight("Exception", { fg = colors.purple })
	highlight("PreProc", { fg = colors.yellow })
	highlight("Include", { fg = colors.yellow })
	highlight("Define", { fg = colors.yellow })
	highlight("Macro", { fg = colors.yellow })
	highlight("PreCondit", { fg = colors.yellow })
	highlight("Type", { fg = colors.yellow })
	highlight("StorageClass", { fg = colors.yellow })
	highlight("Structure", { fg = colors.yellow })
	highlight("Typedef", { fg = colors.yellow })
	highlight("Special", { fg = colors.blue })
	highlight("SpecialChar", { fg = colors.blue })
	highlight("Tag", { fg = colors.blue })
	highlight("Delimiter", { fg = colors.fg })
	highlight("SpecialComment", { fg = colors.gray })
	highlight("Debug", { fg = colors.red })
	highlight("Underlined", { underline = true })
	highlight("Error", { fg = colors.red })
	highlight("Todo", { fg = colors.purple, bold = true })

	-- UI elements
	highlight("Cursor", { fg = colors.bg, bg = colors.fg })
	highlight("CursorLine", { bg = colors.black })
	highlight("CursorColumn", { bg = colors.black })
	highlight("ColorColumn", { bg = colors.black })
	highlight("LineNr", { fg = colors.gray })
	highlight("CursorLineNr", { fg = colors.yellow })
	highlight("VertSplit", { fg = colors.gray })
	highlight("Folded", { fg = colors.gray, bg = colors.bg })
	highlight("FoldColumn", { fg = colors.gray, bg = colors.bg })
	highlight("SignColumn", { fg = colors.fg, bg = colors.bg })
	highlight("MatchParen", { fg = colors.red, bold = true })
	highlight("StatusLine", { fg = colors.fg, bg = colors.black })
	highlight("StatusLineNC", { fg = colors.gray, bg = colors.black })
	highlight("Pmenu", { fg = colors.fg, bg = colors.black })
	highlight("PmenuSel", { fg = colors.bg, bg = colors.blue })
	highlight("PmenuSbar", { bg = colors.black })
	highlight("PmenuThumb", { bg = colors.fg })
	highlight("WildMenu", { fg = colors.bg, bg = colors.blue })
	highlight("Visual", { bg = colors.gray })
	highlight("VisualNOS", { bg = colors.gray })
	highlight("QuickFixLine", { bg = colors.black })
	highlight("Debug", { fg = colors.yellow })
	highlight("debugPC", { bg = colors.bg })
	highlight("debugBreakpoint", { fg = colors.red })

	-- Treesitter
	highlight("TSAnnotation", { fg = colors.fg })
	highlight("TSAttribute", { fg = colors.cyan })
	highlight("TSBoolean", { fg = colors.orange })
	highlight("TSCharacter", { fg = colors.green })
	highlight("TSComment", { fg = colors.gray, italic = true })
	highlight("TSConditional", { fg = colors.purple })
	highlight("TSConstant", { fg = colors.yellow })
	highlight("TSConstBuiltin", { fg = colors.blue })
	highlight("TSConstMacro", { fg = colors.blue })
	highlight("TSError", { fg = colors.red })
	highlight("TSException", { fg = colors.purple })
	highlight("TSField", { fg = colors.fg })
	highlight("TSFloat", { fg = colors.orange })
	highlight("TSFunction", { fg = colors.blue })
	highlight("TSFuncBuiltin", { fg = colors.cyan })
	highlight("TSFuncMacro", { fg = colors.blue })
	highlight("TSInclude", { fg = colors.purple })
	highlight("TSKeyword", { fg = colors.purple })
	highlight("TSKeywordFunction", { fg = colors.purple })
	highlight("TSKeywordOperator", { fg = colors.purple })
	highlight("TSLabel", { fg = colors.red })
	highlight("TSMethod", { fg = colors.blue })
	highlight("TSNamespace", { fg = colors.yellow })
	highlight("TSNone", { fg = colors.fg })
	highlight("TSNumber", { fg = colors.orange })
	highlight("TSOperator", { fg = colors.fg })
	highlight("TSParameter", { fg = colors.fg })
	highlight("TSParameterReference", { fg = colors.fg })
	highlight("TSProperty", { fg = colors.fg })
	highlight("TSPunctDelimiter", { fg = colors.fg })
	highlight("TSPunctBracket", { fg = colors.fg })
	highlight("TSPunctSpecial", { fg = colors.red })
	highlight("TSRepeat", { fg = colors.purple })
	highlight("TSString", { fg = colors.green })
	highlight("TSStringRegex", { fg = colors.orange })
	highlight("TSStringEscape", { fg = colors.red })
	highlight("TSSymbol", { fg = colors.cyan })
	highlight("TSType", { fg = colors.yellow })
	highlight("TSTypeBuiltin", { fg = colors.yellow })
	highlight("TSVariable", { fg = colors.fg })
	highlight("TSVariableBuiltin", { fg = colors.red })

	-- LSP
	highlight("LspDiagnosticsDefaultError", { fg = colors.red })
	highlight("LspDiagnosticsDefaultWarning", { fg = colors.yellow })
	highlight("LspDiagnosticsDefaultInformation", { fg = colors.blue })
	highlight("LspDiagnosticsDefaultHint", { fg = colors.cyan })

	-- Plugins
	-- Gitsigns
	highlight("GitSignsAdd", { fg = colors.green })
	highlight("GitSignsChange", { fg = colors.yellow })
	highlight("GitSignsDelete", { fg = colors.red })

	-- Indent Blankline
	highlight("IndentBlanklineChar", { fg = colors.gray })

	-- Nvim-tree
	highlight("NvimTreeFolderName", { fg = colors.blue })
	highlight("NvimTreeFolderIcon", { fg = colors.yellow })
	highlight("NvimTreeNormal", { fg = colors.fg, bg = colors.bg })
	highlight("NvimTreeVertSplit", { fg = colors.gray, bg = colors.bg })
	highlight("NvimTreeRootFolder", { fg = colors.purple, bold = true })

	-- Telescope
	highlight("TelescopePromptBorder", { fg = colors.gray })
	highlight("TelescopeResultsBorder", { fg = colors.gray })
	highlight("TelescopePreviewBorder", { fg = colors.gray })
	highlight("TelescopeSelection", { fg = colors.fg, bg = colors.black })
	highlight("TelescopeMultiSelection", { fg = colors.yellow, bold = true })
	highlight("TelescopeNormal", { fg = colors.fg, bg = colors.bg })
	highlight("TelescopeMatching", { fg = colors.blue, bold = true })
	highlight("TelescopePromptPrefix", { fg = colors.purple })

	-- Bufferline
	highlight("BufferLineFill", { fg = colors.fg, bg = colors.black })
	highlight("BufferLineBackground", { fg = colors.gray, bg = colors.black })
	highlight("BufferLineBufferVisible", { fg = colors.fg, bg = colors.black })
	highlight("BufferLineBufferSelected", { fg = colors.fg, bg = colors.bg, bold = true })
end

return M