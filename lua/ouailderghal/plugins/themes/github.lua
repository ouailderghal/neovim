return {
	"projekt0n/github-nvim-theme",
	lazy = false,
	priority = 1000,
	cond = true,
	config = function()
		vim.cmd([[ colorscheme github_dark_high_contrast ]])
	end,
}
