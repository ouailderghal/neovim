return {
  "catppuccin/nvim",
  cond = true,
  name = "catppuccin",
  priority = 1000,

  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      show_end_of_buffer = true,
      term_colors = false,
      dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.7,
      },
      no_italic = false,
      no_bold = false,
      no_underline = false,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      custom_highlights = {},
      default_integrations = true,
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
}
