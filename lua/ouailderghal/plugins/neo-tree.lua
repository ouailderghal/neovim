return {
  "nvim-neo-tree/neo-tree.nvim",
  cond = true,
  version = "v3.x",
  cmd = "Neotree",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },

  keys = {
    {
      "\\",
      ":Neotree reveal<CR>",
      desc = "NeoTree reveal",
      silent = true,
    },
  },

  opts = {
    filesystem = {
      window = {
        mappings = {
          ["\\"] = "close_window",
        },
      },
    },
  },
}
