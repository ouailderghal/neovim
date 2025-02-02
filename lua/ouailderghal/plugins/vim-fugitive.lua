return {
  "tpope/vim-fugitive",
  lazy = true,
  cmd = { "G" },

  cond = function()
    return vim.fn.isdirectory(".git") == 1
  end,

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
