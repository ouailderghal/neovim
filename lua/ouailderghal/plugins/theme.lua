return {
  "catppuccin/nvim",
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
        all = { text = "#ffffff" },
        mocha = { base = "#000000" },
    }
    })

    vim.opt.background = "dark"
    vim.cmd.colorscheme "catppuccin"
    -- vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#F38BA8" })
  end
}
