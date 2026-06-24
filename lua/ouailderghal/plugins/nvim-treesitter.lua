return {
  "nvim-treesitter/nvim-treesitter",
  cond = false,
  lazy = true,
  build = ":TSUpdate",

  ft = {
    "lua",
    "c",
    "cpp",
    "sh",
    "go",
    "python",
    "php",
    "html",
    "javascript",
    "typescript",
    "tex",
  },


  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = false,
      ensure_installed = {
        "lua",
        "c",
        "cpp",
        "bash",
        "go",
        "python",
        "php",
        "html",
        "javascript",
        "typescript",
        "latex",
      },

      highlight = { enable = true },
      indent = { enable = false },

      playground = {
        enable = true,
        updatetime = 25,
        persist_queries = false,
      },
    })
  end,
}
