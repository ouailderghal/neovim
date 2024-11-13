return {
  "epwalsh/obsidian.nvim",
  cond = true,
  version = "*",
  lazy = true,
  dependencies = { "nvim-lua/plenary.nvim" },
  ft = "markdown",

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
