return {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	cond = true,
	config = function()
		vim.cmd([[ colorscheme gruvbox ]])
	end,
}
