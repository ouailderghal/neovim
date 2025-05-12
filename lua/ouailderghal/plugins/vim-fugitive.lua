return {
  "tpope/vim-fugitive",
  lazy = true,
  cmd = { "G" },
  cond = true,

  keys = { 
    {
      "<leader>gg",
      mode = "n",
      "<cmd>G<cr>",
    },
    {
      "<leader>gb",
      mode = "n",
      "<cmd>!gh browse<cr>",
    },
  },
}
