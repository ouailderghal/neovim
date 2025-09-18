return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()

    require("onedark").setup({
      style = 'dark',
      transparent = false,
      term_colors = true,
      ending_tildes = false,
      cmp_itemkind_reverse = false,

      code_style = {
          comments = 'italic',
          keywords = 'none',
          functions = 'bold',
          strings = 'none',
          variables = 'none'
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
    })

    require("onedark").load()
  end
}
