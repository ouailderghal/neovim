return {
  "nvim-telescope/telescope.nvim",
  cond = true,
  tag = "0.1.8",

  dependencies = {
    "nvim-lua/plenary.nvim"
  },

  config = {
    pickers = {
      builtin = { theme = "ivy" },
      find_files = { theme = "ivy" },
      git_files = { theme = "ivy" },
      live_grep = { theme = "ivy" },
      git_branches = { theme = "ivy" },
      oldfiles = { theme = "ivy" },
      live_grep = { theme = "ivy" },
      buffers = { theme = "ivy" },
    }
  },

  keys = {
    {
      "<leader>ss",
      mode = "n",
      function()
	require("telescope.builtin").builtin()
      end,
    },
    {
      "<leader>sf",
      mode = "n",
      function()
	require("telescope.builtin").find_files({ hidden = true })
      end,
    },
    {
      "<leader>sp",
      mode = "n",
      function()
	require("telescope.builtin").git_files({ hidden = true })
      end,
    },
    {
      "<leader>s.",
      mode = "n",
      function()
	require("telescope.builtin").oldfiles()
      end,
    },
    {
      "<leader>sg",
      mode = "n",
      function()
	require("telescope.builtin").live_grep()
      end,
    },
    {
      "<leader><leader>",
      mode = "n",
      function()
	require("telescope.builtin").buffers()
      end,
    },
    {
      "<leader>sb",
      mode = "n",
      function()
	require("telescope.builtin").git_branches()
      end,
    },
  },
}
