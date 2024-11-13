return {
  "tpope/vim-fugitive",
  cond = true,
  lazy = false,

  keys = {
    {
      "<leader>gg",
      "<cmd>G<cr>",
    },
    {
      "<leader>gp",
      "<cmd>G push<cr>",
    },
    {
      "<leader>gl",
      "<cmd>Gclog<cr>"
    },
    {
      "<leader>gb",
      "<cmd>!gh browse<cr>",
    },
  },
}
