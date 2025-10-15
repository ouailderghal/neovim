return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()

    require("onedark").setup({
      style = "deep",
      transparent = false,
      term_colors = true,
      ending_tildes = false,
      cmp_itemkind_reverse = false,

      code_style = {
          comments = "italic",
          keywords = "none",
          functions = "bold",
          strings = "none",
          variables = "none"
      },

      lualine = {
          transparent = false,
      },

      colors = {
        black = "#151820",
        bg0 = "#000000",
        bg1 = "#2d3343",
        bg2 = "#343e4f",
        bg3 = "#363c51",
        bg_d = "#1e242e",
        bg_blue = "#6db9f7",
        bg_yellow = "#f0d197",
        fg = "#a5b0c5",
        purple = "#ca72e4",
        green = "#97ca72",
        orange = "#d99a5e",
        blue = "#5ab0f6",
        yellow = "#ebc275",
        cyan = "#4dbdcb",
        red = "#ef5f6b",
        grey = "#546178",
        light_grey = "#7d899f",
        dark_cyan = "#25747d",
        dark_red = "#a13131",
        dark_yellow = "#9a6b16",
        dark_purple = "#8f36a9",
        diff_add = "#303d27",
        diff_delete = "#3c2729",
        diff_change = "#18344c",
        diff_text = "#265478",
      },

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
