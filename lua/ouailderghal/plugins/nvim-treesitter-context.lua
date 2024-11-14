return {
  "nvim-treesitter/nvim-treesitter-context",
  cond = true,

  config = function()
    require("treesitter-context").setup({
      enable = true,
      multiwindow = false,
      max_lines = 0,
      min_window_height = 0,
      line_numbers = true,
      multiline_threshold = 10,
      trim_scope = "outer",
      mode = "cursor",
      separator = nil,
      zindex = 10,
      on_attach = nil,
    })
  end,
}
