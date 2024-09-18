return {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	cond = false,
	config = function()
		vim.cmd([[ colorscheme gruvbox ]])
	end,
}
