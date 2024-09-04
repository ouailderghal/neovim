local function set_indent(tabstop, expandtab)
	vim.bo.tabstop = tabstop
	vim.bo.softtabstop = tabstop
	vim.bo.shiftwidth = tabstop
	vim.bo.expandtab = expandtab
end

local function set_textwidth(width)
	vim.opt_local.textwidth = width
	vim.opt_local.colorcolumn = tostring(width)
end

local indent_group = vim.api.nvim_create_augroup("indent_group", { clear = true })
local textwidth_group = vim.api.nvim_create_augroup("textwidth_group", { clear = true })

vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "*",
	callback = function()
		vim.wo.number = false
		vim.wo.relativenumber = false
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	group = indent_group,
	pattern = {
		"go",
		"yaml",
		"ocaml",
		"bash",
		"make",
		"dockerfile",
		"lua",
	},
	callback = function()
		set_indent(2, true)
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	group = indent_group,
	pattern = {
		"typescript",
		"javascript",
		"python",
	},
	callback = function()
		set_indent(4, true)
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	group = textwidth_group,
	pattern = {
		"go",
		"yaml",
		"ocaml",
		"bash",
		"lua",
		"typescript",
		"javascript",
		"python",
	},
	callback = function()
		set_textwidth(120)
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	group = textwidth_group,
	pattern = {
		"markdown",
		"tex",
		"org",
		"dockerfile",
		"make",
	},
	callback = function()
		set_textwidth(80)
	end,
})
