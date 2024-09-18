return {
	"projekt0n/github-nvim-theme",
	lazy = false,
	priority = 1000,
	cond = false,
	config = function()
		vim.cmd([[ colorscheme github_dark ]])
	end,
}
