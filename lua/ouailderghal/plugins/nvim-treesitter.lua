return {
  "nvim-treesitter/nvim-treesitter",
  cond = true,

  build = ":TSUpdate",
  ft = {
    "lua",
    "c",
    "cpp",
    "bash",
    "sh",
    "go",
    "python",
    "php",
    "html",
    "javascript",
    "typescript",
    "yaml",
    "json",
    "dockerfile",
    "java",
    "make",
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
        "yaml",
        "json",
        "dockerfile",
        "java",
        "make",
      },
      highlight = { enable = true },
      indent = { enable = false },
    })
  end,
}
