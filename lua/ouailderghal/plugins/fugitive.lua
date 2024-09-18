return {
	"tpope/vim-fugitive",
	cond = true,
	config = function()
		vim.keymap.set("n", "<leader>gg", ":Git<CR>")
	end,
}
