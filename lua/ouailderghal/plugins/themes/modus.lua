return {
	"miikanissi/modus-themes.nvim",
	lazy = false,
	priority = 1000,
	cond = false,
	config = function()
		vim.cmd([[ colorscheme modus_vivendi ]])
	end,
}
