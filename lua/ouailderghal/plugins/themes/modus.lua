return {
	"miikanissi/modus-themes.nvim",
	lazy = false,
	priority = 1000,
	cond = true,
	config = function()
		vim.cmd([[ colorscheme modus ]])
	end,
}

-- vim: ts=2 sts=2 sw=2 et
