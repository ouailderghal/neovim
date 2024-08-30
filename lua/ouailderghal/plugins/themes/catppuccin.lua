-- vim: ts=2 sts=2 sw=2 et

return {
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
	cond = false,
	config = function()
		vim.cmd([[ colorscheme catppuccin-macchiato ]])
	end,
}
