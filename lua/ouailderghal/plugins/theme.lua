return {
  "https://github.com/ellisonleao/gruvbox.nvim",
  cond = false,
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.background = "dark"
    vim.cmd("colorscheme gruvbox")
  end
}
