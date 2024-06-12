return {
	"Shatur/neovim-ayu",

	cond = false,
	priority = 1000,

	init = function()
		vim.cmd.colorscheme("ayu")
		vim.opt.background = "dark"
		vim.cmd.hi("Comment gui=none")
	end,
}

-- vim: ts=2 sts=2 sw=2 et
