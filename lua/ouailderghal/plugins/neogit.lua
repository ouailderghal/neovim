return {
	"NeogitOrg/neogit",
	cond = false,

	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",

		"nvim-telescope/telescope.nvim",
		"ibhagwan/fzf-lua",
	},

	config = function()
		local neogit = require("neogit")
		neogit.setup({
			open = { kind = "tab" },
		})

		vim.keymap.set("n", "<leader>gg", ":Neogit<CR>")
	end,
}
