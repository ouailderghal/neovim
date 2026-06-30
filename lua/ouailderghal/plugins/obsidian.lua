return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "Personal",
          path = "~/Documents/vaults/Personal/",
        },
      },
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
      ui = { enable = false },
    })
  end,

  keys = {
    { "<leader>on", "<cmd>ObsidianNew<CR>",          mode = "n", desc = "New note" },
    { "<leader>oo", "<cmd>ObsidianOpen<CR>",         mode = "n", desc = "Open in Obsidian app" },
    { "<leader>os", "<cmd>ObsidianSearch<CR>",       mode = "n", desc = "Search notes" },
    { "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>",  mode = "n", desc = "Quick switch" },
    { "<leader>ob", "<cmd>ObsidianBacklinks<CR>",    mode = "n", desc = "Backlinks" },
    { "<leader>ot", "<cmd>ObsidianTags<CR>",         mode = "n", desc = "Tags" },
    { "<leader>od", "<cmd>ObsidianDailies<CR>",      mode = "n", desc = "Daily notes" },
    { "<leader>ol", "<cmd>ObsidianLinks<CR>",        mode = "n", desc = "Links in note" },
    { "<leader>of", "<cmd>ObsidianFollowLink<CR>",   mode = "n", desc = "Follow link" },
    { "<leader>or", "<cmd>ObsidianRename<CR>",       mode = "n", desc = "Rename note" },
  },
}
