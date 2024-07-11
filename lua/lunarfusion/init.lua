local M = {}

function M.setup(opts)
	opts = opts or {}
	local colors = require("lunarfusion.colors")
	local highlights = require("lunarfusion.highlights")

	-- Override colors with user options
	for k, v in pairs(opts) do
		colors[k] = v
	end

	-- Clear existing highlights
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Set colorscheme name
	vim.g.colors_name = "lunarfusion"

	-- Set terminal colors
	vim.g.terminal_color_0 = colors.black
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_2 = colors.green
	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_4 = colors.blue
	vim.g.terminal_color_5 = colors.purple
	vim.g.terminal_color_6 = colors.cyan
	vim.g.terminal_color_7 = colors.white
	vim.g.terminal_color_8 = colors.gray
	vim.g.terminal_color_9 = colors.red
	vim.g.terminal_color_10 = colors.green
	vim.g.terminal_color_11 = colors.yellow
	vim.g.terminal_color_12 = colors.blue
	vim.g.terminal_color_13 = colors.purple
	vim.g.terminal_color_14 = colors.cyan
	vim.g.terminal_color_15 = colors.white

	-- Apply highlights
	highlights.set_highlights(colors)
end

return M
