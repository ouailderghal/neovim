-- vim: ts=2 sts=2 sw=2 et

return {
	"EdenEast/nightfox.nvim",
	lazy = false,
	priority = 1000,
	cond = true,
	config = function()
		vim.cmd([[ colorscheme nightfox ]])
	end,
}
