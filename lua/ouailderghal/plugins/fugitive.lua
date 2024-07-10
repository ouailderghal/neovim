-- vim: ts=2 sts=2 sw=2 et
return {
	"tpope/vim-fugitive",
	cond = true,
	config = function()
		vim.keymap.set("n", "<leader>gg", ":Git<CR>")
	end,
}
