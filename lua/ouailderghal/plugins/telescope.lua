return {
  "nvim-telescope/telescope.nvim",
  cond = true,
  event = "VimEnter",
  branch = "0.1.x",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = function()
        return vim.fn.executable("make") == 1
      end,
    },
  },

  config = function()
    require("telescope").setup({
      pickers = {
        find_files = {
          previewer = false,
          theme = "ivy",
        },

        live_grep = {
          previewer = true,
          theme = "ivy",
        },
      },

      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown(),
        },
      },
    })

    pcall(require("telescope").load_extension, "fzf")
    pcall(require("telescope").load_extension, "ui-select")
  end,
}
