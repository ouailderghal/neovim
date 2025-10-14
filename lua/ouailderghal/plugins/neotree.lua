return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false, -- neo-tree will lazily load itself
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },

    keys = {
      {
        "\\",
        mode = "n",
        "<cmd>Neotree toggle<cr>"
      }
    },

    config = function()
      config_abs_path = { show_path = "absolute" }

      require("neo-tree").setup({
        enable_git_status = true,
        enable_diagnostics = true,

        filesystem = {
          hijack_netrw_behavior = "disabled",
        },

        window = {
          mappings = {
            -- node navigation & toggling
            ["<2-LeftMouse>"] = "open",
            ["<cr>"] = "open",
            ["<space>"] = { "toggle_node", nowait = false },
            ["C"] = "close_node",
            ["z"] = "close_all_nodes",
            ["Z"] = "expand_all_nodes",

            -- preview controls
            ["P"] = { "toggle_preview", config = { use_float = true, use_snacks_image = true, use_image_nvim = true } },
            ["i"] = "show_file_details",
            ["l"] = "focus_preview",

            -- file & window operations
            ["s"] = "open_split",
            ["v"] = "open_vsplit",
            ["t"] = "open_tabnew",
            ["q"] = "close_window",
            ["<esc>"] = "cancel",

            -- file management
            ["a"] = { "add", config = { show_path = "absolute" } },
            ["A"] = { "add_directory", config = config_abs_path },
            ["d"] = "delete",
            ["r"] = "rename",
            ["c"] = { "copy", config = config_abs_path },
            ["m"] = { "move", config = config_abs_path },
            ["R"] = "refresh",
          }
        },
      })
    end
  }
}

