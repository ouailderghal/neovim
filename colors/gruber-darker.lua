-- gruber-darker.lua
-- Gruber Darker color scheme for Neovim

local colors = {
	fg = "#e4e4ef",
	fg1 = "#f4f4ff",
	fg2 = "#f5f5f5",
	white = "#ffffff",
	black = "#000000",
	bg1 = "#101010",
	bg = "#181818",
	bg1_1 = "#282828",
	bg2 = "#453d41",
	bg3 = "#484848",
	bg4 = "#52494e",
	red1 = "#c73c3f",
	red = "#f43841",
	red1_1 = "#ff4f58",
	green = "#73c936",
	yellow = "#ffdd33",
	brown = "#cc8c3c",
	quartz = "#95a99f",
	niagara2 = "#303540",
	niagara1 = "#565f73",
	niagara = "#96a6c8",
	wisteria = "#9e95c7",
}

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "gruber-darker"

local function highlight(group, opts)
	local style = opts.style and "gui=" .. opts.style or "gui=NONE"
	local fg = opts.fg and "guifg=" .. opts.fg or "guifg=NONE"
	local bg = opts.bg and "guibg=" .. opts.bg or "guibg=NONE"
	local sp = opts.sp and "guisp=" .. opts.sp or "guisp=NONE"
	vim.cmd(string.format("highlight %s %s %s %s %s", group, style, fg, bg, sp))
end

highlight("Normal", { fg = colors.fg, bg = colors.bg })
highlight("Comment", { fg = colors.niagara1, style = "italic" })
highlight("Constant", { fg = colors.wisteria })
highlight("String", { fg = colors.brown })
highlight("Identifier", { fg = colors.red1_1 })
highlight("Function", { fg = colors.green })
highlight("Statement", { fg = colors.yellow })
highlight("Keyword", { fg = colors.red })
highlight("PreProc", { fg = colors.quartz })
highlight("Type", { fg = colors.wisteria })
highlight("Special", { fg = colors.niagara })
highlight("Underlined", { fg = colors.green, style = "underline" })
highlight("Ignore", { fg = colors.niagara1 })
highlight("Error", { fg = colors.white, bg = colors.red })
highlight("Todo", { fg = colors.yellow, bg = colors.bg1 })

-- More highlight groups can be added here as needed
