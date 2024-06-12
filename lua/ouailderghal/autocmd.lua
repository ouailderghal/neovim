-- Disable line numbers in terminal mode
vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "*",
	callback = function()
		vim.wo.number = false
		vim.wo.relativenumber = false
	end,
})

-- Go settings
vim.api.nvim_create_augroup("GoSettings", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = "GoSettings",
	pattern = "go",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.softtabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
	end,
})

-- Make settings
vim.api.nvim_create_augroup("GoSettings", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = "GoSettings",
	pattern = "make",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.softtabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = false
	end,
})

-- Markdown settings
local markdown_group = vim.api.nvim_create_augroup("markdown_settings", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = markdown_group,
	pattern = "markdown",
	callback = function()
		vim.opt_local.textwidth = 80
		vim.opt_local.colorcolumn = "80"
	end,
})

-- OCaml settings
vim.api.nvim_create_augroup("OCamlSettings", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = "OCamlSettings",
	pattern = "ocaml",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.softtabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = false
	end,
})

-- vim: ts=2 sts=2 sw=2 et
