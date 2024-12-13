return {
  {
    "Shatur/neovim-ayu",
    cond = true,
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("ayu").setup({
        theme = "ayu",
        mirage = false,
        terminal = true,
        overrides = {},
      })

      vim.opt.background = "dark"
      vim.cmd.colorscheme("ayu-dark")
    end,
  },
  {
    "folke/tokyonight.nvim",
    cond = false,
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.opt.background = "dark"
      vim.cmd.colorscheme("tokyonight-night")
    end,
  },
}
