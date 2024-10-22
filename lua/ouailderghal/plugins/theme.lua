return {
	"bluz71/vim-moonfly-colors",
	lazy = false,
	priority = 1000,
	cond = true,
	config = function()
		vim.cmd([[ colorscheme moonfly ]])
	end,
}
