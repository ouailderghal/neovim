return {
  "navarasu/onedark.nvim",
  cond = true,
  priority = 1000,

  config = function()
    require("onedark").setup({
      style = "dark", -- dark, darker, cool, deep, warm, warmer, light
      transparent = false,
      term_colors = true,
      ending_tildes = false,
      cmp_itemkind_reverse = false,

      toggle_style_key = "<leader>ts",
      toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" },

      code_style = {
        comments = "italic",
        keywords = "bold",
        functions = "bold",
        strings = "italic",
        variables = "none",
      },

      lualine = {
        transparent = false,
      },

      -- Override palette colors
      colors = {
        bright_orange = "#ff8800",
        bright_yellow = "#e5c07b",
        bright_green  = "#98c379",
        bright_cyan   = "#56b6c2",
        bright_blue   = "#61afef",
        bright_purple = "#c678dd",
        bright_red    = "#e06c75",
        grey          = "#5c6370",
        light_grey    = "#848b98",
      },

      -- Override highlight groups
      highlights = {
        -- Editor chrome
        CursorLine              = { bg = "#2c313a" },
        LineNr                  = { fg = "#4b5263" },
        CursorLineNr            = { fg = "#e5c07b", fmt = "bold" },
        MatchParen              = { fg = "#ff8800", fmt = "bold,underline" },
        Search                  = { fg = "#282c34", bg = "#e5c07b", fmt = "bold" },
        IncSearch               = { fg = "#282c34", bg = "#ff8800", fmt = "bold" },

        -- Syntax
        ["@keyword"]            = { fg = "#c678dd", fmt = "bold" },
        ["@keyword.return"]     = { fg = "#e06c75", fmt = "bold" },
        ["@function"]           = { fg = "#61afef", fmt = "bold" },
        ["@function.builtin"]   = { fg = "#56b6c2", fmt = "bold" },
        ["@type"]               = { fg = "#e5c07b", fmt = "bold" },
        ["@type.builtin"]       = { fg = "#e5c07b", fmt = "bold,italic" },
        ["@constant"]           = { fg = "#d19a66", fmt = "bold" },
        ["@constant.builtin"]   = { fg = "#d19a66", fmt = "bold,italic" },
        ["@string"]             = { fg = "#98c379", fmt = "italic" },
        ["@comment"]            = { fg = "#5c6370", fmt = "italic" },
        ["@variable"]           = { fg = "#abb2bf" },
        ["@variable.builtin"]   = { fg = "#e06c75", fmt = "italic" },
        ["@parameter"]          = { fg = "#d19a66" },
        ["@field"]              = { fg = "#abb2bf" },
        ["@property"]           = { fg = "#abb2bf" },
        ["@operator"]           = { fg = "#56b6c2" },
        ["@punctuation.bracket"]= { fg = "#abb2bf" },

        -- Diagnostics
        DiagnosticError         = { fg = "#e06c75" },
        DiagnosticWarn          = { fg = "#e5c07b" },
        DiagnosticInfo          = { fg = "#61afef" },
        DiagnosticHint          = { fg = "#98c379" },
        DiagnosticUnderlineError= { fmt = "undercurl", sp = "#e06c75" },
        DiagnosticUnderlineWarn = { fmt = "undercurl", sp = "#e5c07b" },
      },

      diagnostics = {
        darker = true,
        undercurl = true,
        background = true,
      },
    })

    require("onedark").load()
  end,
}
