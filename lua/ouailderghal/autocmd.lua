local function set_indent(tabstop, expandtab)
	vim.bo.tabstop = tabstop
	vim.bo.softtabstop = tabstop
	vim.bo.shiftwidth = tabstop
	vim.bo.expandtab = expandtab
end

local indent_group = vim.api.nvim_create_augroup("indent_group", { clear = true })

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
		"make",
		"go",
		"yaml",
		"ocaml",
		"bash",
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
		"php",
		"pkl",
	},
	callback = function()
		set_indent(4, true)
	end,
})
