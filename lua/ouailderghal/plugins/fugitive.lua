return {
	"tpope/vim-fugitive",
	cond = true,
  keys = {
    {
     "<leader>gg",
     "<cmd>Git | wincmd _<cr>"
    },
    {
      "<leader>gb",
      "<cmd>!gh browse<cr>"
    },
  }
}
