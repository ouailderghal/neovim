return {
  {
    "ellisonleao/gruvbox.nvim",
    cond = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = "hard",
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })

      vim.opt.background = "dark"
      vim.cmd.colorscheme("gruvbox")
    end,
  },
  {
    "miikanissi/modus-themes.nvim",
    cond = true,
    lazy = false,
    priority = 1000,

    config = function()
      -- Default options
      require("modus-themes").setup({
        -- Theme comes in two styles `modus_operandi` and `modus_vivendi`
        -- `auto` will automatically set style based on background set with vim.o.background
        style = "auto",
        variant = "deuteranopia",
        transparent = false,
        dim_inactive = false,
        hide_inactive_statusline = false,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
        },
      })

      vim.opt.background = "dark"
      vim.cmd.colorscheme("modus")
    end
  },
}
