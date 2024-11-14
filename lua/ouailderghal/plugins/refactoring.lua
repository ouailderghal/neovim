return {
  "ThePrimeagen/refactoring.nvim",
  cond = true,
  lazy = true,

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },

  opts = {},

  ft = {
    "lua",
    "go",
    "c",
    "cpp",
    "python",
    "bash",
    "javascript",
    "typescript",
    "php",
    "ocaml",
    "java",
  },

  keys = {
    {
      "<leader>re",
      "<cmd>Refactor extract<cr>",
      mode = "x",
    },
    {
      "<leader>rf",
      "<cmd>Refactor extract_to_file<cr>",
      mode = "x",
    },
    {
      "<leader>rv",
      "<cmd>Refactor extract_var<cr>",
      mode = "x",
    },
    {
      "<leader>ri",
      "<cmd>Refactor inline_var<cr>",
      mode = { "n", "x" },
    },
    {
      "<leader>rI",
      "<cmd>Refactor inline_func<cr>",
      mode = "n",
    },
    {
      "<leader>rb",
      "<cmd>Refactor extract_block<cr>",
      mode = "n",
    },
    {
      "<leader>rbf",
      "<cmd>Refactor extract_block_to_file<cr>",
      mode = "n",
    },
  },
}
