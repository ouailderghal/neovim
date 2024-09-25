return {
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,
	cond = true,
	config = function()
		vim.cmd([[ colorscheme onedark ]])
	end,
}
