return {
  "smoka7/multicursors.nvim",
  cond = true,
  lazy = true,

  dependencies = {
    "smoka7/hydra.nvim",
  },

  opts = {},

  cmd = {
    "MCstart",
    "MCvisual",
    "MCclear",
    "MCpattern",
    "MCvisualPattern",
    "MCunderCursor",
  },

  keys = {
    {
      "<leader>m",
      "<cmd>MCstart<cr>",
      mode = { "v", "n" },
    },
  },
}
