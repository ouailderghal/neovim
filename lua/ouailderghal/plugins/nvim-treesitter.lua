-- Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { 
    "nvim-treesitter/nvim-treesitter-textobjects",
    -- "nvim-treesitter/nvim-treesitter-context",
  },

  build = ":TSUpdate",

  opts = {
    auto_install = false,
    auto_sync = false,
    additional_vim_regex_highlighting = true,
    ensure_installed = {
      "lua",
      "luadoc",
      "vim",
      "vimdoc",
      "diff",
      "go",
      "c",
      "cpp",
      "python",
      "terraform",
      "bash",
      "markdown",
      "javascript",
      "typescript",
      "latex",
      "php",
      "ocaml",
      "dockerfile",
      "java",
      "json",
      "yaml",
    },

    highlight = { enable = true },
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
  end,
}
