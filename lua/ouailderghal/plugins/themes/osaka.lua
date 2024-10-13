return {
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 1000,
  cond = false,
  opts = {},
	config = function()
		vim.cmd([[ colorscheme solarized-osaka ]])
	end,
}
