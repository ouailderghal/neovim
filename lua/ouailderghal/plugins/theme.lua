return {
  {
    "navarasu/onedark.nvim",
    cond = true,
    opt = {
      style = "dark",
      transparent = false,
      term_colors = true,
      ending_tildes = true,
      cmp_itemkind_reverse = false,

      toggle_style_key = nil,
      toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" },

      code_style = {
        comments = { "italic" },
        conditionals = { "bold" },
        loops = { "bold" },
        functions = { "bold", "italic" },
        keywords = {},
        strings = { "italic" },
        variables = {},
        numbers = { "bold" },
        booleans = { "bold", "underline" },
        properties = {},
        types = { "bold" },
        operators = { "italic" },
      },

      lualine = {
        transparent = false,
      },

      colors = {},
      highlights = {},

      diagnostics = {
        darker = true,
        undercurl = true,
        background = true,
      },
    },
    config = function()
      vim.opt.background = "dark"
      vim.cmd.colorscheme("onedark")
    end,
  },
  {
    "catppuccin/nvim",
    cond = false,
    name = "catppuccin",
    priority = 1000,

    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = false,
        show_end_of_buffer = true,
        term_colors = false,
        no_italic = false,
        no_bold = false,
        no_underline = false,
        custom_highlights = {},
        default_integrations = true,

        background = {
          light = "latte",
          dark = "mocha",
        },

        dim_inactive = {
          enabled = true,
          shade = "dark",
          percentage = 0.7,
        },

        styles = {
          comments = { "italic" },
          conditionals = { "bold" },
          loops = { "bold" },
          functions = { "bold", "italic" },
          keywords = {},
          strings = { "italic" },
          variables = {},
          numbers = { "bold" },
          booleans = { "bold", "underline" },
          properties = {},
          types = { "bold" },
          operators = { "italic" },
        },

        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },

        color_overrides = {
          all = {
            rosewater = "#ffffff",
            flamingo = "#ffffff",
            red = "#ffdd33",
            maroon = "#ffffff",
            pink = "#ffdd33",
            mauve = "#ffdd33",
            peach = "#96a6c8",
            yellow = "#899b92",
            green = "#73c936",
            teal = "#88b992",
            sky = "#cc8c3c",
            sapphire = "#96a6c8",
            blue = "#778899",
            lavender = "#778899",
            text = "#eae3d5",
            subtext1 = "#d5c9b7",
            subtext0 = "#bfb3a5",
            overlay2 = "#aca195",
            overlay1 = "#958b7e",
            overlay0 = "#6f6660",
            surface2 = "#585858",
            surface1 = "#4b4b4b",
            surface0 = "#353535",
            base = "#181818",
            mantle = "#1d2021",
            crust = "#1d2021",
          },
        },
      })

      vim.opt.background = "dark"
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
