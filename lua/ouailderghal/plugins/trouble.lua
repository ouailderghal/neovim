return {
  "folke/trouble.nvim",
  cond = true,
  cmd = "Trouble",
  opts = {},

  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      mode = "n",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      mode = "n",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      mode = "n",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      mode = "n",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      mode = "n",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      mode = "n",
    },
  },
}
