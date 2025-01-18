local globals = require("ouailderghal.globals")

return {
  "nvim-treesitter/nvim-treesitter",
  cond = true,
  lazy = true,
  build = ":TSUpdate",
  ft = globals.TREESITTER_ENSURE_INSTALLED,

  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-treesitter/nvim-treesitter-context",
  },

  opts = {
    auto_install = false,
    auto_sync = false,
    additional_vim_regex_highlighting = true,
    ensure_installed = globals.TREESITTER_ENSURE_INSTALLED,

    highlight = { enable = true },
    disable = { "dockerfile" },

    indent = { enable = false },

    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },

    textobjects = {
      enable = true,

      swap = {
        enable = true,
        swap_next = {
          ["<leader>a"] = "@parameter.inner",
        },
        swap_previous = {
          ["<leader>A"] = "@parameter.inner",
        },
      },

      select = {
        enable = true,
        lookahead = true,

        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = { query = "@class.inner" },
          ["as"] = { query = "@local.scope", query_group = "locals" },
        },

        selection_modes = {
          ["@parameter.outer"] = "v", -- charwise
          ["@function.outer"] = "V", -- linewise
          ["@class.outer"] = "<c-v>", -- blockwise
        },

        include_surrounding_whitespace = true,
      },
    },
  },

  config = function(_, opts)
    require("nvim-treesitter.install").prefer_git = true
    require("nvim-treesitter.configs").setup(opts)
    require("treesitter-context").setup({
      enable = true,
      multiwindow = false,
      max_lines = 0,
      min_window_height = 0,
      line_numbers = true,
      multiline_threshold = 10,
      trim_scope = "outer",
      mode = "cursor",
      separator = nil,
      zindex = 10,
      on_attach = nil,
    })
  end,
}
