return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.background = "dark"
    vim.cmd("colorscheme onedark_dark")
  end
}
