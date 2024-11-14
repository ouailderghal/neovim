return {
  "epwalsh/obsidian.nvim",

  version = "*",
  cond = true,
  lazy = true,
  dependencies = { "nvim-lua/plenary.nvim" },
  ft = "markdown",

  keys = {
    {
      "<leader>on",
      "<cmd>ObsidianNew<cr>",
      mode = "n",
    },
    {
      "<leader>of",
      "<cmd>ObsidianQuickSwitch<cr>",
      mode = "n",
    },
    {
      "<leader>os",
      "<cmd>ObsidianSearch<cr>",
      mode = "",
    },
    {
      "<leader>ow",
      "<cmd>ObsidianWorkspace<cr>",
      mode = "n",
    },
    {
      "<leader>or",
      "<cmd>ObsidianRename<cr>",
      mode = "n",
    },
    {
      "<leader>ot",
      "<cmd>ObsidianTOC<cr>",
      mode = "n",
    },
    {
      "<C-space>",
      "<cmd>ObsidianToggleCheckbox<cr>",
      mode = "n",
    },
    {
      "<leader>oit",
      "<cmd>ObsidianTemplate<cr>",
      mode = "n",
    },
  },

  opts = {
    workspaces = {
      {
        name = "learning",
        path = "~/vaults/learning",
      },
    },

    templates = {
      folder = "templates",
      date_format = "%d-%m-%Y",
      time_format = "%H:%M",
    },
  },
}
