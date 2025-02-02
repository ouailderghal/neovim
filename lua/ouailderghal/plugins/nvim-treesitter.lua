return {
  "nvim-treesitter/nvim-treesitter",
  lazy = true,
  build = ":TSUpdate",

  ft = {
    "lua",
    "sh",
    "python",
    "go",
    "c",
    "tex",
  },

  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      ensure_installed = {
        "lua",
        "bash",
        "python",
        "go",
        "c",
      },

      highlight = { enable = true },
      indent = { enable = false },
    })
  end,
}
