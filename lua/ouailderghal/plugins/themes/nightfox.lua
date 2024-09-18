return {
	"edeneast/nightfox.nvim",
	lazy = false,
	priority = 1000,
	cond = false,
	config = function()
		vim.cmd([[ colorscheme nightfox ]])
	end,
}
