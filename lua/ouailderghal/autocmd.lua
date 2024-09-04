-- Disable line numbers in terminal mode
vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "*",
	callback = function()
		vim.wo.number = false
		vim.wo.relativenumber = false
	end,
})

-- Go settings
local go_group = vim.api.nvim_create_augroup("go_group", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = go_group,
	pattern = "go",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.softtabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
	end,
})

-- YAML settings
local yaml_group = vim.api.nvim_create_augroup("yaml_group", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = yaml_group,
	pattern = "yaml",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.softtabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
	end,
})

-- Make settings
local make_group = vim.api.nvim_create_augroup("make_group", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = make_group,
	pattern = "make",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.softtabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = false
	end,
})

-- Markdown settings
local markdown_group = vim.api.nvim_create_augroup("markdown_group", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = markdown_group,
	pattern = "markdown",
	callback = function()
		vim.opt_local.textwidth = 80
		vim.opt_local.colorcolumn = "80"
	end,
})

-- OCaml settings
local ocaml_group = vim.api.nvim_create_augroup("ocaml_group", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = ocaml_group,
	pattern = "ocaml",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.softtabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
	end,
})

-- Bash settings
local bash_group = vim.api.nvim_create_augroup("bash_group", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = bash_group,
	pattern = "ocaml",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.softtabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
	end,
})

-- TypeScript settings
local ts_group = vim.api.nvim_create_augroup("ts_group", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = ts_group,
	pattern = "typescript",
	callback = function()
		vim.bo.tabstop = 4
		vim.bo.softtabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.expandtab = true
	end,
})

-- Javascript settings
local js_group = vim.api.nvim_create_augroup("js_group", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = js_group,
	pattern = "javascript",
	callback = function()
		vim.bo.tabstop = 4
		vim.bo.softtabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.expandtab = true
	end,
})

-- LaTeX settings
local latex_group = vim.api.nvim_create_augroup("latex_group", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = latex_group,
	pattern = "tex",
	callback = function()
		vim.opt_local.textwidth = 80
		vim.opt_local.colorcolumn = "80"
	end,
})

-- vim: ts=2 sts=2 sw=2 et
