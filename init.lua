require("ouailderghal")

-- Set colorscheme
-- vim.cmd.colorscheme("catppuccin")

-- Install `lazy.nvim` plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	"folke/zen-mode.nvim", -- Zen mode
	"lervag/vimtex", -- LaTeX
	"aklt/plantuml-syntax", -- PLantUML Syntax
	{ "numToStr/Comment.nvim", opts = {} }, -- "gc" to comment visual regions/lines
	"apple/pkl-neovim",

	{ import = "ouailderghal.plugins" },
	{ import = "ouailderghal.plugins.themes" },
}, { ui = {} })
